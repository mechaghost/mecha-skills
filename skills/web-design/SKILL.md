---
name: web-design
description: Use when designing, reviewing, or implementing websites, web apps, landing pages, dashboards, frontend UI, responsive layouts, design systems, or visual polish.
---

# Web Design

Use this for web UI work before implementation and again during review. The goal is a domain-fit interface that is clear, reusable, responsive, and verifiable in a browser.

## Context First

Read the product goal, audience, repo instructions, existing UI patterns, design system, routes, components, and screenshots when available. Do not design from generic taste alone.

Scan specifically for:

- component directories such as `components/`, `ui/`, and `shared/`,
- CSS variables, design tokens, Tailwind config, theme files, and font loading,
- existing cards, tables, panels, forms, layout shells, and navigation patterns,
- package UI dependencies, icon libraries, animation libraries, and Storybook stories.

Classify relevant UI as: reuse as-is, extend/compose, or create new. Do not create duplicate components when an existing pattern can be reused.

Choose expert lenses that match the subject:

- SaaS/dashboard: workflow UX, data density, state architecture.
- Marketing/site: brand hierarchy, conversion path, performance/SEO.
- Portfolio/editorial: content hierarchy, typography, narrative flow.
- Ecommerce: product inspection, trust, checkout friction.
- Game-adjacent UI: playfield protection, HUD readability, input state.

## Design Rules

- Match the UI to the domain. Operational tools should be quiet, dense, and scannable; editorial or brand pages can be more expressive.
- Build the actual useful surface first, not a decorative landing page, unless the user asked for a landing page.
- Use consistent components for repeated cards, metrics, tables, filters, forms, and information layouts.
- Use the existing spacing scale and alignment system. If none exists, establish a small scale before adding one-off margins and gaps.
- Use existing typography tokens first. When choosing a new readable body or UI font, prefer Lexend unless the brand or design system points elsewhere.
- Prefer familiar controls: icons for common tools, segmented controls for modes, toggles for binary settings, sliders or inputs for numbers, tabs for views.
- Make states explicit: loading, empty, error, disabled, selected, active, hover/focus, mobile, and narrow-content states.
- Keep text inside its containers at mobile and desktop sizes.
- Avoid one-note palettes, gratuitous decorative blobs, and nested card-heavy layouts.

## Planning And Review

For multi-step UI work, feed the design into the existing implementation plan and execution checklist. Each UI todo should name:

- component or route,
- user-facing behavior,
- reusable pattern or component boundary,
- whether it reuses, extends, or creates a component,
- desktop and mobile verification,
- accessibility or keyboard/focus check when relevant.

Review with project-specific experts before completion: UX/accessibility, frontend architecture/component reuse, and browser visual verification. For game UI, use `game-dev-workflow`.

## References

- Interface quality checks: `references/interface-quality.md`
- Responsive and browser review: `references/responsive-review.md`
