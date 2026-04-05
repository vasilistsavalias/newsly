## Worker

- track: community
- agent_id: `019d5f02-2102-7be3-aeca-0fff12435e86`
- nickname: `Raman`
- run_mode: delegated fetch

I used real March 2026 community threads and kept the week placement aligned to the date exposed on the source page when a canonical article timestamp was not available.

## Week 1

### HackerNews

- [GPT-5.4 | Hacker News](https://news.ycombinator.com/item?id=47265005) - launch discussion quickly turned into pricing, context-window, and Codex-usage questions instead of raw capability hype.
- [A standard protocol to handle and discard low-effort, AI-Generated pull requests](https://news.ycombinator.com/item?id=47267947) - the thread treated AI slop review as an open-source maintenance problem, not a novelty problem.
- [Why is GPT-5.4 obsessed with Goblins?](https://news.ycombinator.com/item?id=47319285) - public reaction picked up on odd personality drift in the model.

### Reddit

- [GPT 5.4 is here. Post your first impressions :)](https://www.reddit.com/r/codex/comments/1rlqo4x/gpt_54_is_here_post_your_first_impressions/) - early Codex users liked the planning and self-checking, but immediately started probing usage and reliability.
- [Try GPT5.4 in Codex App for Mac?](https://www.reddit.com/r/codex/comments/1rlp45c/try_gpt54_in_codex_app_for_mac/) - people were mostly checking availability and whether the model switch actually landed in the app.
- [Codex Update -- GPT-5.4 arrives in Codex + artifact-runtime v2.4.0 published](https://www.reddit.com/r/CodexAutomation/comments/1rlrf2b/codex_update_gpt54_arrives_in_codex/) - the reaction was practical: what changed, how fast it feels, and whether it is worth the quota.

### Video / Webinar Watch

- No clean March 1-7 webinar surfaced; the reaction was concentrated in HN and r/codex.

### Researcher Threads Worth Reading

- The HN GPT-5.4 pricing/context comments ([thread](https://news.ycombinator.com/item?id=47265005)) were the strongest signal that long-context economics mattered as much as model quality.

### The Vibe This Week

- Excited, but only after people checked price, context limits, and whether 5.4 actually improved coding workflows.

## Week 2

### HackerNews

- [1M context is now generally available for Opus 4.6 and Sonnet 4.6](https://news.ycombinator.com/item?id=47367129) - the real conversation was about how long-context plus subagents changes workflow, not just model stats.
- [Levels of Agentic Engineering](https://news.ycombinator.com/item?id=47320614) - people latched onto the ladder of increasing agent autonomy and the need for explicit specs and guardrails.
- [Optimizing Content for Agents](https://news.ycombinator.com/item?id=47372672) - the thread shifted fast into prompt injection, agent-facing content, and llms.txt-style formatting.
- [Emacs and Vim in the Age of AI](https://news.ycombinator.com/item?id=47319071) - the comments were about how AI changes text-first workflows, not about editors as culture-war bait.

### Reddit

- [GPT 5.4 Codex is not supported error](https://www.reddit.com/r/codex/comments/1rps5gm/gpt_54_codex_is_not_supported_error/) - people were already hitting product boundary issues as soon as the launch dust settled.
- [Hybrid Claude Code / Codex](https://www.reddit.com/r/ClaudeCode/comments/1rrp17j/hybrid_claude_code_codex/) - a lot of users were openly combining models, with Claude for planning and Codex for faster execution.
- [Codex got faster with 5.4 but I still run everything through Claude Code](https://www.reddit.com/r/ClaudeAI/comments/1rt13n6/codex_got_faster_with_54_but_i_still_run/) - the community framing was basically orchestrator vs worker.

### Video / Webinar Watch

- No clean week-2 webinar surfaced; the strongest signal was the HN and Reddit discussion around agentic engineering and long context.

### Researcher Threads Worth Reading

- The HN long-context thread ([Opus 4.6 / Sonnet 4.6](https://news.ycombinator.com/item?id=47367129)) had unusually useful practical comments about context compaction and subagent sessions.

### The Vibe This Week

- More operational than launch-heavy. People were treating long context, subagents, and agent-facing content as workflow primitives, not features.

## Week 3

### HackerNews

- [Show HN: Unsloth Studio - Local Fine-tuning, Chat UI](https://news.ycombinator.com/item?id=47414372) - local fine-tuning plus chat UI got strong interest because it bundled practical tooling, not just a model.
- [Mistral AI Releases Forge](https://news.ycombinator.com/item?id=47418295) - the thread focused on enterprise customization, not another generic model announcement.
- [Why AI systems don't learn - On autonomous learning from cognitive science](https://news.ycombinator.com/item?id=47418722) - the discussion was unusually serious about what autonomous learning does and does not explain.
- [Launch an autonomous AI agent with sandboxed execution in 2 lines of code](https://news.ycombinator.com/item?id=47420493) - the comments quickly turned into a sandboxing and verification debate.

### Reddit

- [Subagents are now available in Codex](https://www.reddit.com/r/codex/comments/1rvm2si/subagents_are_now_available_in_codex/) - this is the cleanest March signal that subagents became a mainstream Codex workflow topic.
- [Introducing GPT-5.4 mini in Codex](https://www.reddit.com/r/CodexAutomation/comments/1rwrru9/introducing_gpt54_mini_in_codex_2x_faster/) - people treated mini as the throughput model for lighter tasks and subagents.
- [5.4 models use insanely more credits than the 5.3 line for the same performance in codex](https://www.reddit.com/r/codex/comments/1rwy6n7/54_models_use_insanely_more_credits_than_the_53/) - the reaction was basically cost, not just capability.

### Video / Webinar Watch

- No strong week-3 webinar surfaced; the community pulse was mostly HN plus r/codex discussion.

### Researcher Threads Worth Reading

- The HN discussion on [Why AI systems don't learn](https://news.ycombinator.com/item?id=47418722) is the best read here if you care about autonomous learning claims versus deployment reality.

### The Vibe This Week

- The mood got more skeptical and more technical. The conversation moved from "is the model good?" to "what actually works on real tasks, with local tooling, subagents, and sandboxing?"

## Week 4

### HackerNews

- [Get Shit Done: A meta-prompting, context engineering and spec-driven dev system](https://news.ycombinator.com/item?id=47417804) - the thread became a live argument about specs, tests, and whether agent workflows actually scale.
- [Show HN: Sub-millisecond VM sandboxes using CoW memory forking](https://news.ycombinator.com/item?id=47412569) - people cared because sandbox speed is one of the hidden bottlenecks in agent workflows.
- [Meta Outlines New MTIA Accelerator Roadmap for Its Next-Gen AI Compute Mix](https://news.ycombinator.com/item?id=47376376) - the interest was about inference economics and software compatibility, not just hardware marketing.

### Reddit

- [What Subagents Really Mean in Codex, Claude Code, and Gemini CLI](https://www.reddit.com/r/codex/comments/1s2tm5t/what_subagents_really_mean_in_codex_claude_code/) - the discussion was useful because it compared the same workflow pattern across tools.
- [I can no longer in good conscience recommend Claude Code to clients](https://www.reddit.com/r/ClaudeCode/comments/1s7r3xr/i_can_no_longer_in_good_conscience_recommend/) - strong late-March backlash, mostly about reliability and recent degradation.
- [Claude Code vs. Codex: After Double Quota Period & Long-term Choice?](https://www.reddit.com/r/ClaudeCode/comments/1s7ojh8/claude_code_vs_codex_after_double_quota_period/) - a lot of users were already deciding their default worker/orchestrator split.

### Video / Webinar Watch

- [Claude Code Advanced Patterns](https://www.anthropic.com/webinars/claude-code-advanced-patterns) - this is the clearest late-March webinar signal for subagents, hooks, and MCP as normal coding workflow primitives.

### Researcher Threads Worth Reading

- The HN discussion on [Get Shit Done](https://news.ycombinator.com/item?id=47417804) is the best month-end thread for the spec-driven-dev versus ad hoc agent debate.
- The Reddit thread on [What Subagents Really Mean in Codex, Claude Code, and Gemini CLI](https://www.reddit.com/r/codex/comments/1s2tm5t/what_subagents_really_mean_in_codex_claude_code/) is the cleanest community comparison of the orchestration pattern NEWSLY is built around.

### The Vibe This Week

- Late March felt like the field had stopped arguing about whether agent workflows exist. The real argument was about how to spec them, sandbox them, and keep them from turning into expensive chaos.
