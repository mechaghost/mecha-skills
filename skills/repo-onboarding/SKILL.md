---
name: repo-onboarding
description: Use when entering an unfamiliar repository, starting implementation in an existing codebase, or needing repo-aware context before editing.
---

# Repo Onboarding

Use this before editing an unfamiliar repo or a part of the repo you have not inspected yet.

## Fast Pass

1. Read repo-local instructions first: `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`, or equivalent files.
2. Check state: `git status --short`.
3. Map the repo with `rg --files`, then inspect the smallest relevant set of files.
4. Read package manifests, test config, build config, and README only as needed for the task.
5. Search for similar working patterns with `rg`.
6. Identify how to run the narrowest useful verification command.
7. Look for existing context notes, plans, issues, or recent commits that explain current work.

## Editing Rules

- Follow existing architecture, naming, formatting, and test style.
- Prefer local helpers and established abstractions over new ones.
- Avoid broad refactors unless they directly serve the requested change.
- Preserve user changes. If a file has unrelated edits, do not revert them.
- If local instructions conflict with account-level skills, local instructions win.
- Leave durable repo-wide guidance in `AGENTS.md` or equivalent, not in scattered temporary notes.

## Output

Before implementation, know:

- which files are likely involved,
- what pattern you are following,
- what command will verify the change,
- what user changes or dirty files must be protected,
- what context note, if any, future agents should read.
