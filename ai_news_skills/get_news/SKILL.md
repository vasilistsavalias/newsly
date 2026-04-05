---
name: get_news
description: >
  Quick-start alias for the NEWSLY pipeline. Trigger this skill when the user
  says "get news", "get ai news", "run the news pipeline", or wants the
  simplest possible entrypoint. This skill immediately hands off to `ai_news`.
---

# Get News

This is the fastest entrypoint for NEWSLY.

Use it when the user wants AI news without caring about the internal skill map.

## Behavior

- Treat this skill as a thin alias for `ai_news`.
- Resolve any user-provided arguments exactly as you would for `ai_news`.
- Announce that you are handing off to the NEWSLY orchestrator.
- Then execute the full `ai_news` workflow.

## Handoff

Invoke the `ai_news` skill and preserve:

- the target date, week, or month if the user provided one
- flags such as `--force-monthly` or `--no-overwrite`
- the default NEWSLY workflow:
  - parallelize the three fetch skills if sub-agents are available
  - centralize weekly and monthly synthesis

## Output

The resulting files and conversation output should be exactly what `ai_news`
would have produced. `get_news` exists only to make discovery and invocation easier.
