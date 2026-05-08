---
name: brainstorming
description: Use when starting creative, product, feature, UX, game, or ambiguous implementation work that needs intent, constraints, or success criteria clarified before execution.
---

# Brainstorming

Use this before creative or feature work. The goal is to turn a loose idea into a small, approved design before editing code or creating execution todos.

## Workflow

1. Read the local context first: `AGENTS.md`, project docs, current files, recent diffs, and existing patterns.
2. Restate the user goal in practical terms, including constraints and what success would look like.
3. Ask one clarifying question at a time when intent is still unclear. Prefer concrete options when that helps the user answer quickly.
4. Offer 2-3 approaches when there is a real design choice. Name the trade-offs and recommend one.
5. Present a compact design before implementation: scope, affected parts, data or state flow, risks, and verification.
6. For multi-step or risky work, turn the design into a short implementation plan before making an execution checklist/todo tracker.
7. Use three subject-relevant expert perspectives for large/risky plans before promoting them to execution.
8. Ask for approval when the design is ambiguous or user input would change the approach. If the user supplied clear requirements and asked you to execute, treat that as approval.

## Plan Before Todos

For anything beyond a tiny edit, do not start with raw todos. First harden the idea into a plan:

- name the exact outcome,
- identify affected files or systems,
- split work into independently verifiable increments,
- list tests or checks for each increment,
- remove vague steps such as "clean up", "handle edge cases", or "make it better".

Before promoting a large/risky plan to an execution checklist/todo tracker, perform a three-expert plan review. Choose experts that cover different dimensions of the subject, such as domain logic, architecture, UX, testing, security, performance, accessibility, game feel, or operations.

Record each critique, revise the plan, and repeat until the critiques converge on a specific, executable decision. Then create small, ordered, evidence-based todos.

## Habits

- Keep scope small and useful. Do not add side quests.
- Preserve flow: when requirements are clear and the change is tiny or small, proceed with a concise assumption instead of forcing a formal design gate.
- In existing repos, follow local patterns over generic best practices.
- If the request is too large, decompose it into independently shippable pieces and start with the first one.
- For visual work, prefer showing mockups, screenshots, or prototypes when text would be ambiguous.
- Treat user preferences and repo instructions as higher priority than this skill.

## Output

End brainstorming with either:

- a concise approved design and implementation plan, reviewed to the depth the task risk requires and ready to convert into active todos,
- a short list of open questions blocking a responsible implementation.
