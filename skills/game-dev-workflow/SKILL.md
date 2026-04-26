---
name: game-dev-workflow
description: Use when planning, building, modifying, or testing browser games, gameplay systems, game UI, Phaser, Three.js, React Three Fiber, sprites, WebGL, or playtesting.
---

# Game Dev Workflow

Use this as the entrypoint for browser-game work. Keep gameplay, rendering, UI, assets, and QA connected by one coherent plan.

## Default Route

1. Lock the player fantasy, primary verbs, core loop, failure states, and target session length.
2. Choose the runtime:
   - 2D browser games: default to Phaser, TypeScript, and Vite.
   - Plain 3D: default to Three.js with explicit scene, camera, renderer, and loop control.
   - React-hosted 3D: use React Three Fiber when React state and declarative composition matter.
   - Raw WebGL only when the project is shader-first or renderer-first.
3. Separate simulation from rendering. Simulation owns rules and saveable state; scenes render state and emit input actions.
4. Use DOM overlays for HUD, menus, settings, narrative panels, and dense text unless the game specifically requires in-canvas UI.
5. Treat assets as a system: stable manifest keys, clear folders, preload strategy, and browser-safe formats.
6. Close with a playtest loop: run the game in a browser, verify first input-to-feedback, win/fail/restart paths, HUD readability, viewport resizing, asset loading, audio/input settings when present, and capture screenshots or notes for any issue found.

## Implementation Rules

- Read repo-local instructions and existing architecture before editing.
- Make scoped changes that preserve the playfield and player feedback.
- Keep scenes thin. Avoid burying gameplay rules inside frame callbacks.
- Define input actions separately from physical keys, pointer events, or touch gestures.
- Use tests for deterministic systems where practical, and browser checks for render/UI behavior.
- Review game changes through the relevant expert lens before completion: gameplay feel/rules, rendering/camera/framerate, HUD/layout/accessibility, asset preload/format/scale, and save/state correctness.
- Define "done" for each playable increment: the player can start, understand feedback, recover from failure, and repeat the loop without console errors or layout breakage.

## References

- Browser-game architecture: `references/browser-games.md`
- Playtesting and screenshot checks: `references/playtesting.md`
