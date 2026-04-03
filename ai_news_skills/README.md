# NEWSLY Skills

This folder contains the reusable skill layer for NEWSLY.

## Included Skills

- `ai_news`: the orchestrator and default entrypoint
- `fetch_academia`: gathers academic AI research
- `fetch_industry`: gathers model, API, and tooling changes
- `fetch_viral`: gathers the community pulse
- `synthesize_week`: builds the weekly digest
- `synthesize_monthly`: builds the monthly report

## Design Principles

- agent-agnostic wording
- explicit input and output contracts
- safe parallelization only for independent fetch work
- one coherent synthesis voice at weekly and monthly stages

## Notes

- A stray empty folder with a brace-expanded name currently exists in this repo.
  It appears to be an accidental artifact and should be cleaned up manually when
  deletion is approved.
