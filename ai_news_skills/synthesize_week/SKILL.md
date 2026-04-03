---
name: synthesize_week
description: >
  Merge the weekly academia, industry, and community blocks into one structured
  NEWSLY digest. Use this skill after source gathering is complete.
---

# Synthesize Week

You receive three pre-fetched blocks:

- `ACADEMIA_BLOCK`
- `INDUSTRY_BLOCK`
- `VIRAL_BLOCK`

Your job is to turn them into one coherent weekly digest for an applied AI
reader who cares about research rigor and practical relevance.

## Reader Profile

- technically literate
- short on time
- interested in methods, tooling, reproducibility, and the real meaning of the week
- not interested in hype for its own sake

## Step 1: Deduplicate

Before writing, identify overlaps across the three blocks.

Rules:

- keep papers in the academia section
- keep releases and lab announcements in the industry section
- use cross-reference notes such as `also discussed by the community` when useful
- do not repeat the same item as if it were new in multiple sections

## Step 2: Identify Cross-Cutting Themes

Identify 2 or 3 themes that span multiple blocks.

Good themes connect at least two of:

- research
- industry
- community reaction

## Step 3: Write the Weekly Digest

Return the full markdown file in exactly this structure:

```markdown
---
week: [N]
month: [MONTH]
year: [YEAR]
date_range: "[MONTH] [start_day]-[end_day], [YEAR]"
generated_at: "[ISO timestamp]"
sources_count:
  academia: [N papers]
  industry: [N items]
  viral: [N items]
---

# AI Digest - [MONTH] [YEAR], Week [N]

---

## Academia & Research

[Insert cleaned ACADEMIA_BLOCK content]

---

## Industry & Big Tech

[Insert cleaned INDUSTRY_BLOCK content]

---

## Viral & Community Pulse

[Insert cleaned VIRAL_BLOCK content]

---

## Cross-Cutting Themes This Week

[Theme 1 - 2-3 sentences]

[Theme 2 - 2-3 sentences]

[Theme 3 - optional]

---

## Research Lens

*What this week means for academic work specifically.*

[3-5 sentences.]

**One actionable call:** [1 specific sentence.]

---

## Lab Lens

*What this week means for practical lab work.*

[3-5 sentences.]

**One actionable call:** [1 specific sentence.]

---

## Analyst's Take

*Opinionated synthesis after the neutral sections.*

### What's Actually Interesting
[2-3 sentences distinguishing real advances from loud but thin coverage.]

### What Everyone Missed
[2-3 sentences on an underweighted development.]

### The Slow Burn to Watch
[1-2 sentences on a trend building over multiple weeks.]
```

## Tone Rules

- Research Lens and Lab Lens should be analytical and precise.
- Analyst's Take should be confident and specific.
- Avoid generic hype vocabulary.
- Make concrete judgments when the evidence supports them.

## Quality Bar

- complete YAML frontmatter
- specific actionable calls
- non-redundant "What Everyone Missed"
- at least one mildly contrarian but defensible claim in Analyst's Take
- cross-cutting themes that genuinely bridge sections

## Delegation Guidance

Do not split the final writing across parallel workers. Upstream source gathering
may be parallelized, but this final synthesis should be produced by one agent so
the digest has one coherent editorial voice.
