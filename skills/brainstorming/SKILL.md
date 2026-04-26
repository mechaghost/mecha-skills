---
name: brainstorming
description: Use when starting creative, product, feature, UX, game, or ambiguous implementation work that needs intent, constraints, or success criteria clarified before execution.
---

# Brainstorming

Use this before creative or feature work. The goal is to turn a loose idea into a small, approved design before editing code or creating implementation todos.

## Workflow

1. Read the local context first: `AGENTS.md`, project docs, current files, recent diffs, and existing patterns.
2. Restate the user goal in practical terms, including constraints and what success would look like.
3. Ask one clarifying question at a time when intent is still unclear. Prefer concrete options when that helps the user answer quickly.
4. Offer 2-3 approaches when there is a real design choice. Name the trade-offs and recommend one.
5. Present a compact design before implementation: scope, affected parts, data or state flow, risks, and verification.
6. For multi-step work, turn the approved design into a short implementation plan before making an execution checklist or todo tracker.
7. Review the plan from three subject-relevant expert perspectives before promoting it to execution.
8. Get approval for the design or plan unless the user already supplied explicit requirements and asked you to execute.

## Plan Before Todos

For anything beyond a tiny edit, do not start with a raw todo list. First harden the idea into a plan:

- name the exact outcome,
- identify affected files or systems,
- split work into independently verifiable increments,
- list tests or checks for each increment,
- remove vague steps such as "clean up", "handle edge cases", or "make it better".

Before promoting any multi-step plan to an execution checklist or todo tracker, perform a three-expert plan review. Choose experts that cover different dimensions of the subject, such as domain logic, architecture, UX, testing, security, performance, accessibility, game feel, or operations.

Record each critique, revise the plan, and repeat until the critiques converge on a specific, executable decision. Only after that should the agent create an active checklist. Todos should be small, ordered, and evidence-based.

## Habits

- Keep scope small and useful. Do not add side quests.
- In existing repos, follow local patterns over generic best practices.
- If the request is too large, decompose it into independently shippable pieces and start with the first one.
- For visual work, prefer showing mockups, screenshots, or prototypes when text would be ambiguous.
- Treat user preferences and repo instructions as higher priority than this skill.

## Output

End brainstorming with either:

- a concise approved design and hardened implementation plan, reviewed by three subject-relevant expert perspectives and ready to convert into active todos,
- a short list of open questions blocking a responsible implementation.
