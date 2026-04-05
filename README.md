# NEWSLY

NEWSLY is an agent-agnostic AI news orchestration framework for teams that want
AI news coverage without a manual research grind. It gives an AI agent one
entrypoint, three parallelizable fetch tracks, and a single synthesis layer for
turning raw signals into clean weekly and monthly digests.

The project is designed for public reuse. The skills can be installed into
local or global `.codex` skill directories, but the workflow is not Codex-only.
Any agent runtime that can read Markdown skill specs, browse sources, and write
files can adapt the same pattern.

## Why NEWSLY

Most AI news workflows are either:

- manual and slow
- fully automated but shallow
- multi-agent but messy in the final output

NEWSLY is built around a stricter pattern:

- one orchestrator
- three independent fetch skills
- parallel subagents when the runtime supports them
- one synthesis owner for the final voice

That is the core selling point. NEWSLY is faster because the discovery phase is
parallel, but it stays readable because the writing phase is centralized.

## Who It Is For

- AI researchers who want a compact weekly or monthly scan
- labs that need academic, product, and community signals in one place
- agent builders who want a concrete parallel-subagent workflow
- open-source users who want reusable skills, docs, and example outputs

## What It Does

- runs a one-command weekly AI news pipeline through `ai_news`
- separates source gathering from weekly and monthly synthesis
- makes parallel fetch work explicit for agents that support sub-agents
- keeps the final weekly and monthly editorial passes single-owner and coherent
- documents the installation, output structure, and adaptation rules clearly

## How The Workflow Works

- `ai_news` is the single entrypoint
- the three fetch skills are intentionally independent
- agents that support sub-agents can run those fetch steps concurrently
- weekly and monthly synthesis stay centralized so the final output keeps one voice

## Skill Map

| Skill | Role |
|------|------|
| `ai_news` | Orchestrates the full weekly or monthly workflow |
| `fetch_academia` | Finds the strongest recent AI research signals |
| `fetch_industry` | Finds important model, API, and tooling changes |
| `fetch_viral` | Finds the real community conversation and skepticism |
| `synthesize_week` | Produces the weekly digest |
| `synthesize_monthly` | Produces the month-level report |

## Workflow

1. `ai_news` resolves the target week or month.
2. It gathers research, industry, and community blocks.
3. If the agent supports delegation or sub-agents, the three fetch steps can run in parallel.
4. `synthesize_week` merges the blocks into `YEAR/month/weekN.md`.
5. When four weekly files exist, `synthesize_monthly` builds `YEAR/month/final.md`.

In short:

- parallelize fetch
- centralize synthesis
- keep one orchestrator in control

## Start Here

- install the skills: `docs/getting-started/install.md`
- understand the workflow: `docs/guides/workflow.md`
- inspect each skill contract: `docs/reference/skills.md`
- review the literal delegated example run: `example_output/2026/march/`

## Installation

Quick paths:

- local Codex install: copy the skill folders into `<repo>/.codex/skills/`
- global Codex install: copy the skill folders into `%USERPROFILE%\\.codex\\skills\\`
- other agents: adapt the folder names and keep each `SKILL.md` contract intact

There is also a PowerShell helper at `scripts/install-skills.ps1`.

## Documentation

- `docs/index.md`
- `docs/getting-started/install.md`
- `docs/guides/workflow.md`
- `docs/reference/skills.md`

## Example Run

A literal delegated sample run lives in `example_output/2026/march/`.
It includes:

- saved fetch-worker outputs under `run_artifacts/`
- a run manifest with the delegated worker IDs
- synthesized weekly files plus a monthly `final.md`

That makes the parallel-subagent execution model visible instead of just describing it.

## Licensing

NEWSLY is licensed under the GNU Affero General Public License v3.0. If you
share or modify open-source versions of this project, the resulting open-source
work must remain open source under the same license terms.

See `LICENSE`.
