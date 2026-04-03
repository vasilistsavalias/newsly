---
name: fetch_academia
description: >
  Gather recent academic AI and ML developments from primary research sources.
  Use this skill for the research layer of the NEWSLY weekly pipeline.
  It returns a single structured markdown block covering the most relevant
  papers, recurring methodological themes, and one under-discussed paper worth
  closer attention.
---

# Fetch Academia

Your job is to surface the most relevant academic AI, ML, and deep learning
work from roughly the last 7 days. Prioritize signal over volume.

## Source Priority

Use primary or near-primary research sources in this order:

1. ArXiv
2. Hugging Face Papers
3. Papers with Code

## Search Scope

Focus on:

- `cs.AI`
- `cs.LG`
- `cs.CL`
- `cs.CV`
- `stat.ML`

Representative search queries:

```text
arxiv cs.LG cs.CL new papers this week
arxiv large language models latest
arxiv multimodal AI papers recent
site:arxiv.org cs.LG submitted this week
huggingface.co/papers trending this week
paperswithcode trending methods this week
```

## Inclusion Criteria

Include papers when at least one of these is true:

- the paper introduces a new method, architecture, or training technique
- the paper sets a meaningful new benchmark
- the paper comes from a major lab and reports genuinely unusual results
- the paper is generating credible discussion in research communities
- the paper is directly relevant to LLMs, multimodal models, agents, alignment,
  efficient inference, or diffusion workflows

## Exclusion Criteria

Exclude:

- surveys and reviews unless they are unusually important
- minor incremental benchmark bumps with no clear insight
- paywalled work without an accessible preprint
- workshop output with no usable evidence or code

## Return Format

Return one markdown block using exactly this structure:

```markdown
## Academia & Research

### Top Papers This Week

| # | Title | Authors / Lab | Why It Matters |
|---|-------|---------------|----------------|
| 1 | [Paper Title](arxiv_link) | Lab Name | 1-sentence impact |

### Methodological Trends
[2-3 sentences on recurring methods or research directions.]

### One to Watch
[1 paper that is under-discussed but relevant, with 2-3 sentences on why.]

### Papers with Released Code
- [Title](paper_link) - [repo link if available]
```

## Quality Bar

- Aim for 5 to 10 papers, not filler.
- Prefer direct ArXiv links when available.
- Write "Why It Matters" for a researcher, not a journalist.
- Make sure "One to Watch" is genuinely different from the headline list.

## Delegation Guidance

This skill is internally serial. Do not split the final judgment across multiple
workers unless the runtime has a clean merge strategy. If delegation is used,
delegate source scouting only, then merge findings locally before returning.
