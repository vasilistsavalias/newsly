---
name: fetch_industry
description: >
  Gather recent AI industry developments from model labs, product launches,
  official API updates, and important open-source tooling releases. Use this
  skill for the industry layer of the NEWSLY weekly pipeline.
---

# Fetch Industry

Your job is to surface what major AI labs and infrastructure vendors actually
shipped or changed in roughly the last 7 days. Focus on developments that alter
what researchers and practitioners can do.

## Source Priority

Use primary sources first:

1. official lab blogs and release notes
2. official documentation and API changelogs
3. official GitHub repositories
4. high-signal newsletters only as discovery aids

## Search Scope

Representative targets:

```text
openai.com blog latest
deepmind.google research blog latest
anthropic.com news latest
ai.meta.com research latest
mistral.ai news latest
cohere.com blog latest
x.ai news latest
stability.ai blog latest
huggingface blog latest
```

Also search for:

```text
new AI model release this week
AI API update this week
vLLM latest release
llama.cpp latest release
ollama latest release
LangChain latest release
LlamaIndex latest release
```

## Inclusion Criteria

Include:

- new model releases with real specs, evaluations, or capabilities
- API changes that affect developer behavior, cost, limits, or supported tasks
- research blog posts tied to substantive technical work
- important open-source releases that materially affect AI workflows
- tooling updates that change deployment, inference, evaluation, or training practice

## Exclusion Criteria

Exclude:

- partnerships with no technical substance
- generic responsibility statements
- funding news unless it has immediate technical implications
- cosmetic product updates
- marketing disguised as engineering news

## Return Format

Return one markdown block using exactly this structure:

```markdown
## Industry & Big Tech

### Model & API Releases
| Release | By | What Changed | Link |
|---------|----|--------------|------|
| Model/API name | Lab | 1-line summary | [link] |

### Lab Research Posts
- **[Lab]** - [Post title](link): [1-sentence technical summary]

### Developer Tooling
- **[Tool name]** - [What changed and why it matters](link)

### Notable Open Source
- **[Repo name]** ([stars if known]) - [Why it matters](link)

### This Week's Noise
[2-4 sentences on what got attention but was not technically meaningful.]
```

## Quality Bar

- Use primary-source links wherever possible.
- Do not invent model or API entries when none exist.
- "This Week's Noise" should be specific and useful, not snark for its own sake.

## Delegation Guidance

This skill can be split into parallel scouting by source category, but the final
selection and filtering should be merged by one agent before returning the block.
