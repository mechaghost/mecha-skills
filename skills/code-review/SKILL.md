---
name: code-review
description: Use when reviewing code changes, implementation plans, diffs, checkpoint commits, or agent work for correctness, modularity, efficiency, security, and project fit.
---

# Code Review

Use this before calling non-trivial work complete. Review for bugs first, then modularity, efficiency, security, tests, and fit with the project.

## Context First

Before reviewing, gather enough context to avoid generic advice:

- user goal and accepted plan,
- repo instructions such as `AGENTS.md`,
- relevant architecture and nearby patterns,
- changed files and staged or unstaged diff,
- tests or verification already run or planned,
- known constraints, risks, and user preferences.

Use `rg`, `git diff`, `git status --short`, and targeted file reads. Do not review from the diff alone when project context matters.

## Expert Review Team

Use the lightest review that fits the risk:

- Quick pass: bugs, regressions, verification gaps, obvious copy-paste, and user-change safety.
- Deep pass: three subject-specific expert perspectives for meaningful, risky, or multi-system changes.

For the deep pass, pick experts for the actual project, not generic personas.

Examples:

- Browser game: gameplay systems architect, rendering/performance engineer, UI/playtest reviewer.
- Marketing or product site: frontend architecture reviewer, accessibility/UX reviewer, performance/SEO reviewer.
- Backend API: domain model reviewer, security reviewer, reliability/observability reviewer.
- Data pipeline: data correctness reviewer, operations reviewer, cost/performance reviewer.

Each reviewer needs the same rich context: goal, plan, repo shape, diff, relevant files, and verification status. If separate reviewer agents are unavailable, write the three reviews inline.

## Review Checklist

- Correctness: Does the change satisfy the goal without regressions?
- Modularity: Are responsibilities clear, boundaries small, and dependencies reasonable? Look for copy-pasted structures, especially repeated cards, tables, panels, forms, or information layouts rebuilt differently across pages instead of using shared components or presentation helpers.
- Efficiency: Are algorithms, rendering, IO, network calls, memory, and bundle/runtime costs appropriate?
- Security: Are input handling, auth, secrets, permissions, dependencies, and data exposure safe for this project?
- Tests: Are behavior changes covered at the right level? Did verification actually run?
- Maintainability: Does the code follow local patterns and avoid unrelated churn?
- User changes: Does the diff preserve work the user already had in progress?

## Findings Format

Lead with findings, ordered by severity. Keep each finding concrete:

- location,
- what is wrong,
- why it matters,
- how to reproduce or reason about it,
- suggested fix or decision.

Avoid praise, summaries, and style nits unless they affect maintainability or correctness. If there are no findings, say so and name any remaining verification gap.

## Feed Back Into Execution

Review findings are planning input. Convert accepted findings into the execution checklist/todo tracker with clear acceptance criteria and verification. Do not mark the work complete until findings are fixed, explicitly deferred, or consciously accepted by the user.
