---
name: superpowers-workflow
description: Use when doing disciplined engineering work: implementing features, fixing bugs, debugging failures, writing plans, reviewing changes, or verifying completion.
---

# Superpowers Workflow

Use this to keep agentic engineering deliberate: understand first, change narrowly, verify before claiming success.

## Core Loop

1. Read instructions: user request, `AGENTS.md`, repo docs, and relevant files.
2. Inspect current state: `git status --short`, recent diffs, and existing patterns.
3. For multi-step work, write an implementation plan before creating an execution checklist or editing.
4. Review the plan from three subject-matter perspectives, iterate until the critiques converge on a good decision, then convert it into active todos.
5. Prefer tests before implementation when behavior changes and the repo has a practical test path.
6. For bugs, reproduce and find root cause before proposing fixes.
7. Make scoped changes. Do not bundle unrelated refactors.
8. Preserve user changes. Never reset or overwrite work you did not make.
9. Verify with fresh commands before saying work is complete.
10. Make a checkpoint commit on `main` when a coherent unit of work is done, unless the user says not to commit.
11. Keep the final answer concise, evidence-based, and honest about gaps.

## Debugging Discipline

- Read the full error and stack trace.
- Reproduce the issue consistently.
- Check recent changes and similar working code.
- State one hypothesis at a time, test it minimally, then continue based on evidence.
- If multiple fixes fail, stop and reconsider the architecture instead of piling on patches.

## Required Sequence

For multi-step work:

design -> implementation plan -> three-expert plan review -> iterate until a good decision -> execution checklist/todo tracker -> execution.

Do not create or execute todos before the plan has passed review. Todos are execution state, not planning state.

## Planning Discipline

- Do a planning pass before the todo pass. Todos are execution state, not the first draft of the plan.
- Each plan item should name files or systems, expected behavior, and verification.
- Keep plans small enough to produce working, testable increments.
- Review the plan before executing: check for missing requirements, vague tasks, risky ordering, and unverified assumptions.
- For multi-step work, obtain three domain-expert reviews using whatever review mechanism is available, or write the three critiques inline.
- Iterate on the plan after critiques. Do not promote it to todos until the remaining approach is specific, ordered, and defensible.
- Convert the reviewed plan into an active checklist only when each item is actionable and has a verification path.
- Update checklist status as work progresses; do not mark everything complete only at the end.
- Reject todos that use vague verbs like "improve", "polish", "fix visuals", or "handle edge cases" unless they include observable acceptance criteria and a verification method.

## Three-Expert Plan Review

Before converting a plan into todos, choose three reviewers whose expertise covers different dimensions of the actual subject. Do not use fixed generic personas when the work calls for specialist judgment.

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

Iterate until the plan has a clear decision, the major concerns are resolved or consciously accepted, and the resulting todos are small enough to execute one at a time. If the environment has no separate reviewer or agent mechanism, write the three perspectives explicitly in the main session.

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

## Git Strategy

- Default to working directly on `main` for solo projects.
- Do not create feature branches, worktrees, or pull requests unless the user explicitly asks.
- Use small checkpoint commits after verified units of work.
- Commit messages should be clear and specific about the completed change.
- Before committing, check `git status --short`, review the staged diff, and verify the work.

## Platform Notes

- Codex-specific notes: `references/codex.md`
- Claude Code adaptation notes: `references/claude-code.md`
