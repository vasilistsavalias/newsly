# Workflow

NEWSLY has one orchestrator and five supporting skills.

## Entry Point

Use `ai_news` as the default entrypoint. Do not call the sub-skills directly
unless you are debugging a specific stage or intentionally reusing one piece of
the pipeline.

## Execution Order

1. resolve target week or month
2. prepare output folders
3. gather source blocks
4. synthesize the weekly digest
5. write `weekN.md`
6. if four weekly files exist, synthesize and write `final.md`

## Parallelism Rules

Parallel-safe:

- `fetch_academia`
- `fetch_industry`
- `fetch_viral`

Not parallel-safe:

- `synthesize_week`
- `synthesize_monthly`
- final file writing

The reason is simple: source gathering is independent, but editorial synthesis
needs one merged view and one consistent judgment layer.

## Output Layout

```text
YEAR/
  month/
    week1.md
    week2.md
    week3.md
    week4.md
    final.md
```

## Failure Model

- one failed fetch should not kill the full run
- synthesis should warn before proceeding with fewer than two blocks
- file writes should always be announced clearly
