# Example Output

This folder contains a literal delegated NEWSLY pipeline example for March 2026.

March 2026 was chosen instead of early April 2026 because it gives a complete
four-week sample plus a monthly synthesis. The files here show both the fetch
worker artifacts and the final synthesis shape of the workflow:

```text
example_output/
  2026/
    march/
      week1.md
      week2.md
      week3.md
      week4.md
      final.md
```

These files were created by following the NEWSLY skill contracts against public
web sources, with an emphasis on primary links and direct community threads.

This version includes:

- raw delegated fetch blocks in `run_artifacts/`
- a manifest with the worker agent IDs
- synthesized weekly and monthly outputs built from those delegated blocks
