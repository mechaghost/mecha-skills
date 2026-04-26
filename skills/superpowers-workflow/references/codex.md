# Codex Notes

## Repo Work

- Use `rg` and `rg --files` for search.
- Use `git status --short` before editing and before final reporting.
- Prefer `apply_patch` for hand edits.
- Do not run destructive git commands unless the user explicitly asks.
- Read repo-local `AGENTS.md` and project docs when present.
- If there are user changes in files you need, read them and work with them.

## Git Strategy

- Default to solo flow on `main`.
- Avoid worktrees, feature branches, and PRs unless the user explicitly requests them.
- Make clear checkpoint commits after verified units of work.
- Before committing, inspect `git status --short` and the staged diff.
- Push `main` when the user asks to publish or when the repo workflow calls for syncing finished work.

## Communication

- Give short progress updates during longer work.
- Before editing, say what kind of edit you are about to make.
- Final answers should include what changed, what verification ran, and any remaining risk.

## Frontend And Games

- Start a dev server when needed and share the local URL.
- For visual/browser work, verify with screenshots or browser checks when practical.
- For canvas or WebGL games, DOM-only assertions are not enough.
