# MY MINI MILTY 🎮

**Status: Early Development Concept / Playable Prototype**

MY MINI MILTY is an original 2D side-view arcade shooter prototype built with Godot Engine 4.7.1 and GDScript. This repository documents early experiments with movement, aiming, projectiles, target damage, and reusable platform collision.

## Current prototype

- Side-view player controller using `CharacterBody2D`
- Horizontal movement, jumping, gravity, and jetpack thrust
- Mouse aiming and left-click shooting
- Reusable projectile scene with lifetime and collision
- Simple target dummy with health feedback
- Idle and walk animation tracks using separate head, torso, arm, and leg pivots
- A small, original geometric test arena with collision

## Controls

- **A / D or Left / Right:** Move
- **Space / Enter:** Jump (when grounded)
- **Left Shift:** Jetpack thrust
- **Mouse:** Aim
- **Left mouse button:** Fire

## Planned direction

The longer-term goal is to develop 4–5 original maps, around 15 weapons, four throwable explosives, character customization, audio, clean menus, and local Wi-Fi multiplayer. These are planned features, not yet implemented. The multiplayer prototype and full content roster do not exist in this early package.

## Open the project

1. Install **Godot 4.7.1**.
2. Extract this repository folder.
3. In Godot Project Manager, choose **Import** and select this folder's `project.godot`.
4. Open the project and press **F6** to run the current main scene, or **F5** to run the configured main scene.

The project uses the **Compatibility** renderer and built-in 2D physics. The arena and character are placeholder vector shapes made in Godot, so the current package does not require external image assets.

## Documentation

- [`docs/GDD.md`](docs/GDD.md) — game design document and roadmap
- [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) — planned code organization
- [`docs/PHYSICS.md`](docs/PHYSICS.md) — movement and physics design
- [`ASSET_CREDITS.md`](ASSET_CREDITS.md) — current asset policy
- [`DEVELOPMENT_STATUS.md`](DEVELOPMENT_STATUS.md) — current implementation status

## Asset and licensing policy

The former map image, its associated collision geometry, and unverified raster character/terrain images were omitted from this public concept package because their origin or redistribution permissions were not documented. The currently used character, enemy, projectile, platform, and icon visuals are simple procedural/vector placeholders. Add third-party art, fonts, music, or sound only after confirming the relevant license and documenting it in `ASSET_CREDITS.md`.

No open-source software license is included yet. Until a license is added, do not assume that public visibility grants permission to reuse this project's code or artwork.
