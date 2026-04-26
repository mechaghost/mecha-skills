# Browser Games

## Architecture

- Simulation owns gameplay truth: entities, turns, timers, collisions, inventory, objectives, progression, and save data.
- Renderer owns presentation: sprites or meshes, animation playback, camera, particles, lighting, and scene composition.
- UI owns text-heavy surfaces: HUD, menus, pause, settings, dialogs, inventory, command panels, and accessibility-sensitive controls.
- Input maps physical events to named actions such as `move`, `confirm`, `cancel`, `attack`, `ability-1`, and `pause`.
- Assets are referenced by stable manifest keys, not scattered file paths.

## Engine Defaults

- Phaser: 2D sprites, tilemaps, top-down games, platformers, tactics, arcade loops.
- Three.js: explicit 3D control in plain TypeScript or Vite apps.
- React Three Fiber: React apps with 3D scenes, shared React state, or declarative composition.
- GLB or glTF 2.0: default shipping format for 3D assets.

## Anti-Patterns

- Gameplay rules directly inside render-loop callbacks.
- Renderer objects as the source of truth for saveable state.
- Dense HUD or settings UI forced into canvas by default.
- Asset filenames treated as public API.
- 3D models shipped unoptimized straight from authoring tools.
- Persistent overlays that crowd the playfield.
