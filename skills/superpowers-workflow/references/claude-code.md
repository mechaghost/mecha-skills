# Claude Code Notes

## Installing

Claude Code can use these files as skills if copied or symlinked into the user's Claude skills directory, commonly `~/.claude/skills`, or into another directory supported by the local Claude Code setup.

## Adaptation

- Keep the same `SKILL.md` files and YAML frontmatter.
- Translate Codex tool names to Claude Code tools:
  - shell commands remain shell commands
  - `rg` remains the preferred search command
  - Codex progress updates become normal assistant messages
  - Codex `apply_patch` maps to Claude Code's normal edit workflow
- Keep repo-local instructions higher priority than account-level skills.
- Preserve the same verification rule: do not claim success without fresh evidence.
- Treat "todos" as either Claude Code's todo mechanism or a plain execution checklist.
- Treat "three-expert plan review" as inline critique unless the environment provides a separate reviewer or task mechanism.
- Preserve the solo git strategy unless overridden locally: work on `main`, use checkpoint commits, and do not create PRs or worktrees by default.

## Suggested Pairing

- Use `brainstorming` before creative or feature work.
- Use `repo-onboarding` before editing unfamiliar repositories.
- Use `code-change-discipline` during implementation.
- Use `game-dev-workflow` for browser-game planning and playtesting.
