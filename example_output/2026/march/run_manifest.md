# March 2026 Literal Run Manifest

This folder documents a stricter NEWSLY example run for March 2026.

## Goal

Show the intended orchestration pattern as a literal delegated run:

- one orchestrator
- three parallel fetch workers
- one synthesis owner

## Delegated Workers

- academia: `019d5f01-effe-7af2-9f81-f6157294ab75` (`Ptolemy`)
- industry: `019d5f02-078f-7610-be2f-985daf07abff` (`Heisenberg`)
- community: `019d5f02-2102-7be3-aeca-0fff12435e86` (`Raman`)

## Week Buckets

- week1: March 1-7, 2026
- week2: March 8-14, 2026
- week3: March 15-21, 2026
- week4: March 22-31, 2026

## Worker Outputs

The worker outputs are stored under `run_artifacts/`:

- `academia_blocks.md`
- `industry_blocks.md`
- `viral_blocks.md`

These are then merged into:

- `week1.md`
- `week2.md`
- `week3.md`
- `week4.md`
- `final.md`

## Note

This manifest is intended to make the sub-agent workflow visible.
The worker-returned source blocks are committed under `run_artifacts/`, while
the weekly and monthly files are the synthesis layer built from those blocks.
