# Mecha Skills

Portable AI-agent skills for repo-aware engineering, brainstorming, game development, and disciplined verification.

## Install For Codex

From this repo:

```bash
./bootstrap.sh
```

By default, the script syncs only the skills in this repo into:

```text
~/.codex/skills
```

It creates directories as needed, updates matching skill folders, and does not delete unrelated skills. To install somewhere else:

```bash
CODEX_SKILLS_DIR=/path/to/skills ./bootstrap.sh
```

## Sync Later

Pull or copy the latest version of this repo, then run:

```bash
./bootstrap.sh
```

The script is safe to run repeatedly. It prints which files changed.

## Adapt For Claude Code

Copy or symlink the folders under `skills/` into the Claude Code skills directory used by your setup, commonly:

```text
~/.claude/skills
```

The `SKILL.md` files use portable YAML frontmatter with `name` and `description`. Codex-specific operational notes live in `skills/superpowers-workflow/references/codex.md`; Claude Code adaptation notes live in `skills/superpowers-workflow/references/claude-code.md`.

## Account Skills Vs Repo Instructions

Account-level skills, such as these, express reusable habits across projects: brainstorm before creative work, read repo context before editing, preserve user changes, prefer tests, debug systematically, and verify before claiming success.

Repo-local instructions, such as `AGENTS.md`, are project-specific. They should define local commands, architecture, conventions, and constraints. When repo-local instructions conflict with account-level skills, repo-local instructions win.

## Included Skills

- `brainstorming`: clarify creative, product, feature, UX, and game work before implementation.
- `game-dev-workflow`: browser-game planning, architecture, assets, UI, and playtesting.
- `superpowers-workflow`: disciplined engineering loop inspired by Superpowers.
- `repo-onboarding`: fast repo-aware context gathering before edits.
- `code-change-discipline`: scoped changes, user-change preservation, debugging, and verification.
