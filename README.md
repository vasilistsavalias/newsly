# NEWSLY

NEWSLY is an agent-agnostic AI news orchestration framework built around a small
set of composable skills. It lets an AI agent gather academic, industry, and
community AI signals, synthesize them into weekly and monthly digests, and write
structured output files with one command.

The project is designed for public reuse. The skills can be installed into local
or global `.codex` skill directories, but the workflow is not Codex-only. Any
agent runtime that can read Markdown-based skill specs, browse sources, and
write files can adapt the same pipeline.

## What NEWSLY Does

- runs a one-command weekly AI news pipeline through `ai_news`
- separates source gathering from weekly and monthly synthesis
- makes parallel fetch work explicit for agents that support sub-agents
- keeps the final weekly and monthly editorial passes single-owner and coherent
- documents the installation, output structure, and adaptation rules clearly

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
3. If the agent supports delegation, the three fetch steps can run in parallel.
4. `synthesize_week` merges the blocks into `YEAR/month/weekN.md`.
5. When four weekly files exist, `synthesize_monthly` builds `YEAR/month/final.md`.

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

A representative full-month sample run lives in `example_output/2026/march/`.
It shows the expected weekly and monthly output shape for a complete month.

## Licensing

NEWSLY is licensed under the GNU Affero General Public License v3.0. If you
share or modify open-source versions of this project, the resulting open-source
work must remain open source under the same license terms.

See `LICENSE`.
