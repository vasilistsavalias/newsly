# Installation

NEWSLY ships as a set of skill folders. Each folder contains one `SKILL.md`.

## Option 1: Local Codex Install

Copy the six skill folders from `ai_news_skills/` into:

```text
<your-project>/.codex/skills/
```

Use this mode when the skills should only exist for one repository.

## Option 2: Global Codex Install

Copy the six skill folders into:

```text
%USERPROFILE%\.codex\skills\
```

Use this mode when you want the skills available across repositories.

## Option 3: Scripted Install

Run:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install-skills.ps1 -Mode Local
```

Other valid modes:

- `Global`
- `Custom -Destination <path>`

## Option 4: Other Agent Runtimes

If your agent runtime is not Codex:

- keep one directory per skill
- keep each `SKILL.md` as the contract source of truth
- preserve the orchestrator/sub-skill relationship
- preserve the execution ordering and parallelization rules

## What Gets Installed

- `ai_news`
- `fetch_academia`
- `fetch_industry`
- `fetch_viral`
- `synthesize_week`
- `synthesize_monthly`
