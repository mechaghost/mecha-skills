# Playtesting

Use browser-game QA that sees what a player sees. DOM checks alone are not enough for canvas or WebGL games.

## Playtest Loop

1. Boot the game and confirm the first actionable screen.
2. Exercise the main verbs and state transitions.
3. Capture screenshots for representative states.
4. Check UI overlays separately from the render layer.
5. Test desktop and mobile viewport sanity.
6. Report findings by severity with reproduction steps and likely owner: simulation, renderer, UI, asset pipeline, or performance.

## Universal Checks

- Main verbs are responsive and readable.
- The first playable screen prioritizes play over dashboard chrome.
- HUD stays readable without blocking the central playfield.
- Pause, failure, restart, and recovery states work.
- Viewport resizing does not break layout or camera framing.
- Reduced-motion and focus-change behavior are acceptable where relevant.

## 2D Checks

- Sprite baselines and scale are consistent.
- Hit, hurt, attack, and movement timing read clearly.
- Tiles, platforms, and interactables are visually distinct.
- Particles, shake, or flashes do not obscure play.

## 3D Checks

- Camera controls are stable and recoverable.
- Menus release pointer lock or camera input cleanly.
- Depth, silhouettes, materials, and lighting remain readable.
- GLB, texture, collision proxy, and streaming behavior match runtime needs.
- Use browser performance tooling or WebGL capture tools for unexplained frame cost.
