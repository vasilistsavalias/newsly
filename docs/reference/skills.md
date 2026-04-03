# Skill Reference

## `ai_news`

Role:
Run the full NEWSLY pipeline and write weekly or monthly digest files.

Inputs:
- optional force-monthly flag
- optional no-overwrite flag
- optional explicit period from the user

Outputs:
- `YEAR/month/weekN.md`
- optionally `YEAR/month/final.md`

Parallel notes:
- fetch steps may be delegated
- synthesis and final writes must remain single-owner

## `fetch_academia`

Role:
Gather the strongest recent AI research developments.

Returns:
- one markdown block with top papers, methods, one under-discussed paper, and code releases

## `fetch_industry`

Role:
Gather important lab releases, API updates, and open-source tooling changes.

Returns:
- one markdown block with model/API releases, lab posts, tooling, open source, and noise filtering

## `fetch_viral`

Role:
Gather the practitioner and community pulse.

Returns:
- one markdown block with Hacker News, Reddit, YouTube, researcher threads, and a mood summary

## `synthesize_week`

Role:
Merge the three source blocks into one weekly digest.

Returns:
- complete markdown content for one weekly digest file

## `synthesize_monthly`

Role:
Merge four weekly digests into one monthly report.

Returns:
- complete markdown content for `final.md`
