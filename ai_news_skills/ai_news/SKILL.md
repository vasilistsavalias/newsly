---
name: ai_news
description: >
  Master orchestrator for the NEWSLY AI weekly and monthly digest pipeline.
  Trigger this skill when the user asks for "ai news", "run ai news",
  "weekly digest", "monthly digest", or any request for a structured AI news
  roundup. Use this skill as the default entrypoint unless the user explicitly
  asks to run one sub-skill in isolation.
---

# AI News Orchestrator

You are the entrypoint for the NEWSLY pipeline. Your job is to coordinate the
full workflow from source gathering to weekly or monthly output files.

This skill is written to be agent-agnostic. Adapt the exact tool calls to the
agent runtime you are using, but preserve the workflow, contracts, and safety
rules below.

## Execution Contract

- Default behavior is fully autonomous end-to-end execution.
- Prefer the current date unless the user explicitly provides a target week or month.
- Use the fetch skills to gather source blocks before synthesis.
- Never run weekly or monthly synthesis before the required source inputs exist.
- If the runtime supports sub-agents or parallel workers, the three fetch steps
  may run in parallel because they are independent.
- Weekly synthesis and file writing are blocking steps and must run after all
  available fetch blocks are collected.
- Monthly synthesis is also a blocking step and must run only after the weekly
  files are present or the user explicitly forces a monthly run.

## Inputs

Optional user arguments may include:

- `--force-monthly`: skip weekly generation and build the monthly digest from
  existing weekly files
- `--no-overwrite`: do not overwrite an existing weekly or monthly file
- an explicit target date, week, or month

If the user provides no arguments, infer the target week from the current date.

## Step 0: Resolve the Target Period

Compute:

- `YEAR`: four-digit year, for example `2026`
- `MONTH`: full lowercase month name, for example `april`
- `WEEK`: integer `1` to `4` using day-of-month buckets
  - days `1-7` -> `week1`
  - days `8-14` -> `week2`
  - days `15-21` -> `week3`
  - days `22-31` -> `week4`

Announce:

```text
Detected target: [MONTH] [YEAR], week [N]
Output target: [YEAR]/[MONTH]/week[N].md
```

If `--force-monthly` is present, skip directly to the monthly step.

## Step 1: Prepare Output Folders

Ensure this path exists:

```text
[YEAR]/[MONTH]/
```

If `week[N].md` already exists:

- warn the user
- continue only if overwrite is allowed
- stop if `--no-overwrite` is set

## Step 2: Gather Source Blocks

Run these sub-skills and store their outputs exactly as named blocks:

- `fetch_academia` -> `ACADEMIA_BLOCK`
- `fetch_industry` -> `INDUSTRY_BLOCK`
- `fetch_viral` -> `VIRAL_BLOCK`

### Parallel Guidance

If your runtime supports delegated workers or sub-agents:

- you may run the three fetch skills in parallel
- keep ownership separate per fetch block
- do not let workers write the weekly or monthly digest files directly

If your runtime does not support delegation:

- run the three fetch skills sequentially

### Runtime Announcements

Before each fetch, announce which skill is being invoked.

## Step 3: Weekly Synthesis

Invoke `synthesize_week` with:

- `ACADEMIA_BLOCK`
- `INDUSTRY_BLOCK`
- `VIRAL_BLOCK`
- `WEEK`
- `MONTH`
- `YEAR`

This step is not parallel-safe. It depends on the gathered blocks and must run
only after the fetch phase is complete or intentionally partial.

## Step 4: Write the Weekly File

Write the synthesized markdown to:

```text
[YEAR]/[MONTH]/week[N].md
```

Confirm the final path after writing.

## Step 5: Monthly Check

Count the number of files matching `week1.md` through `week4.md` in
`[YEAR]/[MONTH]/`.

If all four exist, or if the user passed `--force-monthly`:

- invoke `synthesize_monthly`
- pass the weekly file paths plus `MONTH` and `YEAR`
- write the result to `[YEAR]/[MONTH]/final.md`

Otherwise report current progress:

```text
[count]/4 weekly files are present for [MONTH]. Monthly synthesis will run after week 4.
```

## Failure Handling

- If one fetch skill fails or returns no useful results, continue with the remaining blocks.
- If fewer than two source blocks are available, warn the user before synthesis.
- Never silently skip a phase.
- Always state what succeeded, what failed, and what file paths were written.

## Output Contract

This orchestrator should leave behind:

- one weekly file at `[YEAR]/[MONTH]/week[N].md`
- optionally one monthly file at `[YEAR]/[MONTH]/final.md`

It should also leave a short run summary in the conversation covering:

- target period
- fetches completed
- synthesis steps completed
- files written
