# Mecha Skills

Portable AI-agent skills for the way I like agents to work: brainstorm before creative work, understand the repo before editing, make scoped changes, protect user edits, use tests or verification early, and do not claim success without evidence.

These skills are written for Codex first, but the `SKILL.md` files are intentionally portable and can be adapted for Claude Code.

## Warning

This is a strongly opinionated personal workflow repo, not a neutral starter kit. It assumes solo work on `main`, checkpoint commits, push-to-`origin/main`, three-expert planning/review passes, and my preferred agent habits.

The bootstrap script updates only the skill folders shipped by this repo and does not delete unrelated skill folders. If you already have a same-named skill such as `brainstorming` or `code-review`, that matching folder will be replaced with this repo's version.

## What This Gives An Agent

The intended workflow is:

```text
repo context -> brainstorming/design -> implementation plan -> three-expert plan review -> hardened todos -> scoped execution -> code review -> verification -> concise final answer
```

The three-expert review is subject-aware. For a browser game, the reviewers might cover gameplay feel, renderer/performance, and UI/playtesting. For a backend feature, they might cover domain correctness, architecture, and reliability/security.

The code-review pass checks modularity, efficiency, and security, including repeated UI or information-presentation patterns that should become shared components or helpers.

## Git Strategy

This repo assumes a solo, checkpoint-oriented workflow:

- work directly on `main`
- avoid worktrees, feature branches, and PRs unless explicitly requested
- make clear checkpoint commits when a coherent unit of work is done
- verify before committing
- always push checkpoint commits to `origin/main`

## Install For Codex

Clone the repo, then run:

```bash
git clone https://github.com/mechaghost/mecha-skills.git
cd mecha-skills
./bootstrap.sh
```

By default, `bootstrap.sh` syncs the skills in this repo into:

```text
~/.codex/skills
```

It creates directories as needed, updates only these skill folders, prints what changed, and does not delete unrelated skills.

To install somewhere else:

```bash
CODEX_SKILLS_DIR=/path/to/skills ./bootstrap.sh
```

## Update Later

From this repo:

```bash
git pull
./bootstrap.sh
```

The script is safe to run repeatedly.

## Use With Claude Code

Copy or symlink the folders under `skills/` into the Claude Code skills directory used by your setup, commonly:

```text
~/.claude/skills
```

The skill files use standard YAML frontmatter with `name` and `description`. Codex-specific notes live in `skills/superpowers-workflow/references/codex.md`; Claude Code adaptation notes live in `skills/superpowers-workflow/references/claude-code.md`.

In Claude Code, treat `todos` as either Claude's todo mechanism or a plain execution checklist. Treat `three-expert plan review` as inline critique unless your environment provides a separate reviewer/task mechanism.

## Included Skills

| Skill | Purpose |
| --- | --- |
| `brainstorming` | Clarifies creative, product, feature, UX, and game work before implementation. |
| `repo-onboarding` | Guides fast repo-aware context gathering before edits. |
| `superpowers-workflow` | Adds disciplined planning, debugging, review, todo, and verification habits. |
| `code-change-discipline` | Keeps code/docs/config edits scoped, reviewable, and evidence-backed. |
| `code-review` | Reviews changes through project-specific experts for correctness, modularity, efficiency, and security, including duplicated UI/presentation patterns. |
| `web-design` | Guides website and web-app UI design, responsive behavior, component reuse, and browser visual review. |
| `game-dev-workflow` | Covers browser-game planning, architecture, assets, UI, and playtesting. |

## Account Skills Vs Repo Instructions

These are account-level skills. They express reusable habits across projects.

Repo-local instructions such as `AGENTS.md`, `CLAUDE.md`, or project docs are more specific. They should define local commands, architecture, conventions, and constraints. When repo-local instructions conflict with these skills, the repo-local instructions win.

## Repository Layout

```text
skills/
  brainstorming/
    SKILL.md
  game-dev-workflow/
    SKILL.md
    references/
      browser-games.md
      playtesting.md
  superpowers-workflow/
    SKILL.md
    references/
      codex.md
      claude-code.md
  repo-onboarding/
    SKILL.md
  code-change-discipline/
    SKILL.md
  code-review/
    SKILL.md
  web-design/
    SKILL.md
    references/
      interface-quality.md
      responsive-review.md
bootstrap.sh
README.md
```
