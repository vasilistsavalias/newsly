---
name: fetch_viral
description: >
  Gather the community pulse around AI from forums, social discussion, and
  technical content creators. Use this skill for the community layer of the
  NEWSLY weekly pipeline.
---

# Fetch Viral and Community Pulse

Your job is to capture what the AI community is genuinely excited about,
skeptical of, or frustrated by this week. This is the practitioner and observer
layer that complements research and industry reporting.

## Source Priority

Use high-signal community sources such as:

1. Hacker News
2. Reddit communities such as `r/MachineLearning`, `r/LocalLLaMA`,
   `r/artificial`, and `r/deeplearning`
3. technically credible YouTube creators
4. direct researcher and engineer threads on X or Twitter

## Search Scope

Representative queries:

```text
site:news.ycombinator.com AI this week
reddit r/MachineLearning hot this week
reddit r/LocalLLaMA trending this week
Andrej Karpathy latest video
Two Minute Papers latest
AI Explained latest
site:x.com AI researcher thread this week
site:twitter.com AI ML thread this week
```

## Inclusion Criteria

Include:

- technically substantive Hacker News debates
- Reddit threads where practitioners share real findings or failures
- videos that explain techniques, papers, or benchmarks
- researcher threads with concrete observations or non-obvious lessons
- community criticism that reveals real tool or model limitations

## Exclusion Criteria

Exclude:

- generic hype and doom posting
- mainstream media summaries with no technical content
- reposted old content with no new substance
- promotional videos
- memes unless they encode a real technical critique

## Return Format

Return one markdown block using exactly this structure:

```markdown
## Viral & Community Pulse

### HackerNews - What Engineers Are Discussing
| Thread | Comments | Why It Sparked Debate |
|--------|----------|----------------------|
| [Thread title](link) | ~N | 1-sentence core argument |

### Reddit - What Practitioners Are Saying
- **r/[sub]** - [Post title](link): [What the discussion converged on]

### YouTube - Must-Watch This Week
| Creator | Video | Why Watch It |
|---------|-------|--------------|
| [Creator] | [Title](link) | [Who should care and why] |

### Researcher Threads Worth Reading
- **[@handle]** - [What the thread covers](link)

### The Vibe This Week
[3-5 sentences on the actual community mood and tension.]
```

## Quality Bar

- Include at least one genuinely skeptical or critical item when justified.
- Favor technical depth over entertainment value.
- Link to the original thread, post, or video directly.
- "The Vibe This Week" should take a position instead of flattening everything.

## Delegation Guidance

Parallel scouting by platform is safe. Final synthesis of the community mood is
not parallel-safe and should be written by one agent after the platform-specific
findings are gathered.
