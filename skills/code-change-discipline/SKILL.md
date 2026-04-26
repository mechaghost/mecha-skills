---
name: code-change-discipline
description: Use when modifying code, tests, configs, docs, or generated assets in a repository where scoped edits, user-change preservation, and verification matter.
---

# Code Change Discipline

Use this while making changes in a repo. The job is to leave a narrow, reviewable diff backed by evidence.

## Before Editing

- Read the relevant files and nearby patterns.
- Check `git status --short`.
- Notice user changes and protect them.
- Decide the smallest coherent change that satisfies the request.
- For multi-step work, derive the execution checklist/todo tracker from a hardened plan, not from first impressions.
- A plan is hardened only after three expert perspectives critique it and the agent resolves the important concerns.
- For behavior changes, write or identify a failing test first when practical.

## While Editing

- Keep the diff scoped to the request.
- Execute one checklist item at a time and update status as evidence changes.
- If execution reveals a plan flaw, revise the plan/todos before continuing.
- Do not reorder, reformat, or refactor unrelated code.
- Use structured APIs and parsers instead of fragile string manipulation when available.
- Add comments only where they clarify non-obvious logic.
- If you discover a real adjacent issue, mention it or make a targeted fix only if it is necessary for the requested work.

## Debugging

- Do not guess from symptoms.
- Reproduce, inspect evidence, compare to working examples, then fix root cause.
- Change one thing at a time when testing a hypothesis.

## Verification

- Run the narrowest meaningful test first, then broader checks when risk justifies it.
- If verification fails, capture the failing command or check, state the likely cause, make the smallest correction, and rerun the same check before broadening scope.
- For UI changes, verify at least one desktop and one mobile viewport when layout, interaction, or visual hierarchy changes.
- For externally visible behavior, include the user-facing acceptance path, not only unit or build checks.
- For frontend or game visuals, include browser/screenshot checks when automated tests cannot see the behavior.
- Read command output before reporting.
- Never claim success without fresh evidence.

## Final Answer

Keep it short:

- what changed,
- what verification ran,
- what was not verified or still needs attention.
