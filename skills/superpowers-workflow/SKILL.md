---
name: superpowers-workflow
description: "Use when doing disciplined engineering work: implementing features, fixing bugs, debugging failures, writing plans, reviewing changes, or verifying completion."
---

# Superpowers Workflow

Use this to keep agentic engineering deliberate: understand first, change narrowly, verify before claiming success.

## Core Loop

1. Read instructions: user request, `AGENTS.md`, repo docs, and relevant files.
2. Inspect current state: `git status --short`, recent diffs, and existing patterns.
3. Choose the lightest workflow that fits the task size and risk.
4. For multi-step or risky work, write an implementation plan before creating an execution checklist or editing.
5. Review large/risky plans from three subject-matter perspectives, iterate until the critiques converge, then convert them into execution todos.
6. Prefer tests before implementation when behavior changes and the repo has a practical test path.
7. For bugs, reproduce and find root cause before proposing fixes.
8. Make scoped changes. Do not bundle unrelated refactors.
9. Preserve user changes. Never reset or overwrite work you did not make.
10. For non-trivial changes, review the result with project-specific expert perspectives before final verification.
11. Verify with fresh commands before saying work is complete.
12. Make a checkpoint commit on `main` when a coherent unit of work is done, unless the user says not to commit.
13. Push checkpoint commits to `origin/main` unless the user says not to push.
14. Keep the final answer concise, evidence-based, and honest about gaps.

## Task Size Ladder

- Tiny: one file or obvious text/config tweak. Scan relevant context, edit, run the narrowest check, report.
- Small: localized behavior or UI change. Brief plan, focused edit, quick review, focused verification.
- Medium: multi-file feature, meaningful UI, or behavior change. Plan, execution checklist, project-specific review, verification.
- Large/risky: architecture, security, payments, data loss, game systems, complex UI, or repeated failed fixes. Use three-expert plan review before todos.

Use the heavier path when consequences are high. Use the fast path when ceremony would cost more than it protects.

## Debugging Discipline

- Read the full error and stack trace.
- Reproduce the issue consistently.
- Check recent changes and similar working code.
- State one hypothesis at a time, test it minimally, then continue based on evidence.
- If multiple fixes fail, stop and reconsider the architecture instead of piling on patches.

## Required Sequence

For medium work:

design -> implementation plan -> execution checklist/todo tracker -> execution -> code review -> verification.

For large/risky work:

design -> implementation plan -> three-expert plan review -> resolved critiques -> execution checklist/todo tracker -> execution -> code review -> verification.

Do not create or execute todos before the plan is clear enough to execute. For large/risky work, that means three-expert review first. Todos are execution state, not planning state.

## Planning Discipline

- Each plan item should name files or systems, expected behavior, and verification.
- Keep plans small enough to produce working, testable increments.
- Review the plan for missing requirements, vague tasks, risky ordering, and unverified assumptions.
- For large/risky work, obtain three domain-expert reviews using whatever review mechanism is available, or write the critiques inline.
- Do not promote the plan to todos until the approach is specific, ordered, and defensible.
- Update checklist status as work progresses; do not mark everything complete only at the end.
- Reject todos that use vague verbs like "improve", "polish", "fix visuals", or "handle edge cases" unless they include observable acceptance criteria and a verification method.

## Three-Expert Plan Review

Before converting a large/risky plan into todos, choose three reviewers whose expertise covers different dimensions of the actual subject. Do not use fixed generic personas when the work calls for specialist judgment.

Examples:

- Browser game: gameplay feel, renderer/performance, UI/playtesting.
- Payments: product flow, backend correctness, security/compliance.
- Data pipeline: data modeling, reliability/operations, testability.
- Frontend app: UX/accessibility, state architecture, browser verification.

Each expert should review the same proposed plan and return:

- the strongest concern,
- the missing requirement or risky assumption,
- the change they recommend,
- the verification they would require.

Iterate until the plan has a clear decision, major concerns are resolved or consciously accepted, and the resulting todos are small enough to execute one at a time. If the environment has no separate reviewer or agent mechanism, write the three perspectives explicitly in the main session.

## Battle-Hardened Todos

A todo is ready only when it answers:

- What exact change will be made?
- Where will it be made?
- How will success be observed?
- What test, build, screenshot, or manual check proves it?
- What user changes must be preserved?
- Who or what is the domain-expert reviewer for this change: compiler/tests, framework docs, design system, browser screenshot, gameplay playtest, accessibility check, or human review?
- What acceptance criteria would make a skeptical reviewer agree the work is done?

If any answer is missing, refine the plan before executing.

## Context Notes

Leave lightweight notes when work spans multiple steps, pauses mid-stream, or creates decisions future agents would otherwise rediscover.

Include only:

- current goal,
- decisions made,
- files touched,
- commands run,
- verification status,
- next action,
- known risks.

Put durable repo-wide instructions in `AGENTS.md` or equivalent. Put temporary resume notes in the plan, issue, chat summary, or a repo-local note file only when useful.

## Git Strategy

- Default to working directly on `main` for solo projects.
- Do not create feature branches, worktrees, or pull requests unless the user explicitly asks.
- Use small checkpoint commits after verified units of work.
- Commit messages should be clear and specific about the completed change.
- Before committing, check `git status --short`, review the staged diff, and verify the work.
- After committing, push to `origin/main` unless the user explicitly says not to push.

## Platform Notes

- Codex-specific notes: `references/codex.md`
- Claude Code adaptation notes: `references/claude-code.md`
