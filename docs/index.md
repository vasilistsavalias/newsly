# NEWSLY Docs

NEWSLY is a public, agent-agnostic skill suite for generating weekly and monthly
AI news digests.

## Start Here

- `docs/getting-started/install.md`
- `docs/guides/workflow.md`
- `docs/reference/skills.md`

## Core Ideas

- `ai_news` is the entrypoint.
- The fetch layer is parallel-safe when the runtime supports delegated workers.
- Weekly and monthly synthesis are intentionally single-owner steps.
- The skill wording is written for Codex and non-Codex agents alike.
