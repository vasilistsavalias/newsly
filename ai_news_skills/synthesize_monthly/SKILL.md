---
name: synthesize_monthly
description: >
  Merge four weekly NEWSLY digests into one higher-order monthly report.
  Use this skill when all weekly files for a month exist or when the user
  explicitly forces a monthly synthesis.
---

# Synthesize Monthly

You receive:

- `week1.md`
- `week2.md`
- `week3.md`
- `week4.md`

Your job is to produce `final.md`, a monthly report that is more valuable than
reading the four weeklies separately.

## Monthly Standard

Weekly output answers:

- what happened this week

Monthly output answers:

- what actually changed this month
- which developments held up
- what the weekly pipeline underweighted or missed

## Step 1: Read the Weekly Files

For each weekly file, extract:

- YAML metadata
- the three most important developments
- any cross-reference notes
- the "One to Watch" paper or equivalent
- the "Slow Burn" call

## Step 2: Run Gap Analysis

Ask:

1. which supposedly separate events are really one trend
2. what appeared once but should have persisted in the conversation
3. where the weeklies contradict each other
4. what important development is missing from all four weeklies
5. which early signals actually mattered by month-end

## Step 3: Write `final.md`

Return the monthly report using exactly this structure:

```markdown
---
month: [MONTH]
year: [YEAR]
type: monthly_digest
weeks_covered: [1, 2, 3, 4]
generated_at: "[ISO timestamp]"
total_papers_covered: [N]
total_industry_items_covered: [N]
---

# AI Monthly Digest - [MONTH] [YEAR]

---

## Month at a Glance

- [single factual sentence]
- [single factual sentence]

---

## Academia - Monthly Arc

[3-4 paragraphs on the dominant research arc.]

### Papers That Held Up
[2-4 entries.]

### Papers That Were Overhyped
[1-3 entries.]

---

## Industry - Monthly Arc

[3-4 paragraphs on the month-level industry shift.]

### The Move That Mattered Most
[1 paragraph.]

---

## Community - Monthly Pulse

[2-3 paragraphs on the community mood and debate arc.]

---

## What the Weeklies Missed

[3-5 items in the form:
What it is -> Why it matters -> Where to find it]

---

## The Month's Defining Trends

### Trend 1: [Short name]
[2-3 sentences.]

### Trend 2: [Short name]
[2-3 sentences.]

### Trend 3: [Short name]
[2-3 sentences.]

---

## Research Lens - Monthly Summary

**Must-Read of the Month:** [paper + reason]

**Method to Learn:** [technique + reason]

**Open Problem That Got Clearer:** [problem + what changed]

---

## Lab Lens - Monthly Summary

**Tool/Model to Evaluate:** [pick + reason]

**What Just Got Cheaper/Easier:** [pick + reason]

**What to Skip:** [pick + reason]

---

## Analyst's Monthly Take

### The Real Story of [MONTH]
[4-6 sentences with a clear thesis.]

### The Prediction
[1-3 sentences, falsifiable.]

### The Month in One Sentence
[1 sentence.]
```

## Quality Bar

- the defining trends must be meaningfully different from each other
- "What the Weeklies Missed" must add net new value
- the prediction must be checkable next month
- the monthly take must say something debatable, not just safe
- "Papers That Were Overhyped" should not be empty

## Delegation Guidance

Reading and extracting facts from the four weekly files may be parallelized by
week, but the gap analysis and final monthly writing should be handled by one
agent so the report remains coherent and comparable month to month.
