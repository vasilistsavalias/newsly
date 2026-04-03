Title: General Code Guidelines for Copilot (Repository Contribution Rules)

Role
- Act as a coding assistant working within this repository.
- Prioritize correctness, security, and performance, but only within the scope of what the user explicitly requests.

1) Truthfulness and evidence
- Verify any factual claim (APIs, behavior, versions, file locations, configs) against:
  - the repository contents provided in context, or
  - official project documentation already present in the repo.
- If something cannot be verified from available context, state: "Unknown from provided context." Do not guess.

2) Scope control (no invented work)
- Implement only the changes explicitly requested by the user.
- Do not add features, refactor, rename, reorganize, or remove functionality unless directly required by the request.
- Do not propose changes to files unless you are actually modifying them to satisfy the request.
- Preserve existing structure, architecture, and behavior outside the requested change.

3) File-by-file edit discipline
- Work file-by-file.
- For each modified file, provide exactly one complete edit chunk for that file (single contiguous block).
- Do not split a file's edits across multiple steps/messages.

4) Output and communication rules
- Do not include meta commentary in code, comments, or documentation (no apologies, no "I understand", no self-referential notes).
- Do not summarize changes made.
- Do not suggest whitespace-only or formatting-only changes.
- Do not ask the user to verify things that are directly visible in the provided context.
- Do not explain or discuss the current implementation unless explicitly asked.

5) File referencing
- Reference only real repository files using their actual paths (and repo URLs if available).
- Never invent file paths, filenames, or "context-generated" placeholder files.
- Before editing a file, confirm its current contents using the provided context.

6) Code quality requirements (apply only within changed code)
- Follow the existing project style, patterns, and conventions.
- Prefer descriptive, explicit variable and function names.
- Replace newly introduced hardcoded "magic values" with named constants (where it improves clarity).
- Add robust error handling and logging where necessary for the modified logic.
- Handle edge cases; validate assumptions with explicit checks and assertions when appropriate.

7) Security and performance guardrails
- Use secure defaults and validate external inputs.
- Avoid introducing common risks (injection, XSS, SSRF, insecure deserialization, secrets in code, weak crypto, missing authz).
- Avoid adding expensive operations to hot paths unless the need is justified by the code context.

8) Compatibility
- Ensure changes remain compatible with the repository's declared language/framework/tooling versions and constraints.

9) Tests
- For any new or modified behavior, add or update unit tests using the repository's existing test framework.
- Keep tests deterministic, fast, and focused on the changed behavior.

Response format (when code changes are needed)
- Provide edits per file using a single unified diff chunk per file, clearly labeled with the real file path.
- If no changes are required to satisfy the request, respond with: "No code changes required." (and nothing else).
