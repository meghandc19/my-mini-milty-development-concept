# MY MINI MILTY — Architecture

## 1. Purpose

This document describes how MY MINI MILTY will be organized internally.

The goal is to keep the project:

- Clean
- Easy to understand
- Easy to expand
- Easy to debug
- Suitable for long-term development
- Ready for future multiplayer and modding

We will build the architecture gradually.

We will NOT create every folder and system at the beginning.

---

## 2. Main Architecture

The game will be divided into several major systems:

MY MINI MILTY
│
├── Core
├── Player
├── Weapons
├── Physics
├── Maps
├── UI
├── Bots
├── Multiplayer
├── Modding
└── Data

---

## 3. Core System

The Core system manages the basic game flow.

Possible responsibilities:

- Starting the game
- Loading scenes
- Match management
- Game state
- Global systems
- Configuration
- Save/load systems

The Core system should not contain unnecessary gameplay-specific code.

---

## 4. Player System

The Player system manages player behavior.

Possible responsibilities:

- Movement
- Jumping
- Jetpack
- Air control
- Health
- Damage
- Death
- Respawn
- Aiming
- Player animation

The player system should communicate with other systems instead of containing everything itself.

Example:

Player
├── Movement
├── Health
├── Weapon
├── Animation
└── Input

---

## 5. Weapon System

The Weapon system manages combat weapons.

Possible responsibilities:

- Weapon selection
- Firing
- Ammunition
- Reloading
- Projectiles
- Recoil
- Damage
- Explosions
- Knockback

Weapon properties should eventually be data-driven.

Example:

Weapon Data
├── Damage
├── Fire Rate
├── Ammo
├── Reload Time
├── Projectile Speed
├── Knockback
└── Explosion Radius

---

## 6. Physics System

Physics is a core part of MY MINI MILTY.

It will control or influence:

- Gravity
- Acceleration
- Deceleration
- Jumping
- Jetpack thrust
- Air movement
- Recoil
- Knockback
- Projectile movement
- Collision

Physics values should be centralized where practical so they can be tuned easily.

---

## 7. Map System

The Map system manages game environments.

Possible responsibilities:

- Platforms
- Walls
- Ground
- Spawn points
- Boundaries
- Map objects
- Backgrounds
- Map loading

Maps should eventually support data-driven configuration.

---

## 8. UI System

The UI system manages menus and gameplay interface.

Possible screens:

- Main Menu
- Offline
- Multiplayer
- Settings
- Player Profile
- Customization
- Loadout
- Map Selection
- Lobby
- Match Results

The UI should communicate with game systems without containing the core gameplay logic.

---

## 9. Bot System

Bots will be developed after the basic player and combat systems are working.

Possible responsibilities:

- Detection
- Navigation
- Target selection
- Shooting
- Movement
- Jetpack movement
- Difficulty

Bots should use the same basic gameplay systems as players wherever practical.

---

## 10. Multiplayer System

Multiplayer will initially focus on:

- LAN
- Wi-Fi
- Hotspot/local network

Later:

- Internet multiplayer
- Server authority
- Matchmaking
- Ranked gameplay

Important competitive actions should eventually be validated by the server.

Multiplayer will NOT be developed during the first player prototype.

---

## 11. Modding System

Modding is a long-term system.

The game should eventually support controlled community content through an official API.

Possible areas:

- Player
- Weapons
- Maps
- Objects
- Physics
- UI
- Gameplay
- Events

Mods should not receive unrestricted access to the user's computer.

---

## 12. Data-Driven Architecture

Where practical, game data should be separated from gameplay code.

Examples:

Weapon Data
Map Data
Player Data
Mod Data
Game Settings

This allows content to be changed or added without rewriting the core systems.

---

## 13. Project Folder Structure

The long-term structure may become:

MY MINI MILTY/
│
├── project.godot
├── README.md
├── .gitignore
│
├── docs/
│   ├── GDD.md
│   ├── ARCHITECTURE.md
│   ├── PHYSICS.md
│   └── MOD_API.md
│
├── scenes/
│   ├── main/
│   ├── player/
│   ├── weapons/
│   ├── maps/
│   ├── ui/
│   └── effects/
│
├── scripts/
│   ├── core/
│   ├── player/
│   ├── weapons/
│   ├── physics/
│   ├── multiplayer/
│   ├── bots/
│   └── modding/
│
├── assets/
│   ├── sprites/
│   ├── textures/
│   ├── audio/
│   ├── fonts/
│   └── effects/
│
├── data/
│   ├── weapons/
│   ├── maps/
│   ├── players/
│   └── mods/
│
└── mods/

Important: This is the planned long-term structure.

We will NOT create all of these folders now.

Folders will be created only when their systems are actually needed.

---

## 14. Development Dependency Order

The systems should generally be developed in this order:

Project Foundation
        ↓
Player
        ↓
Movement + Physics
        ↓
Camera
        ↓
Weapons
        ↓
Combat
        ↓
Maps
        ↓
Bots
        ↓
Offline Mode
        ↓
UI
        ↓
Local Multiplayer
        ↓
Destruction
        ↓
Mod API
        ↓
Online Multiplayer
        ↓
Creator Ecosystem

This order may change if testing shows a better approach.

---

## 15. Design Rules

### Rule 1 — Keep systems separated

Do not put the entire game into one script.

### Rule 2 — Avoid unnecessary hard-coding

Use data/configuration where practical.

### Rule 3 — Build only what is currently needed

Do not create complicated systems months before they are required.

### Rule 4 — Test frequently

Every major system should be tested before building heavily on top of it.

### Rule 5 — Commit stable milestones

Use Git after meaningful stable changes.

### Rule 6 — Protect the architecture

Before adding a major feature, consider how it affects existing systems.

---

## 16. Current Architecture Stage

Current stage: EARLY DEVELOPMENT CONCEPT / PLAYABLE PROTOTYPE SCAFFOLD

Implemented in the current project files (runtime behavior still needs to be verified in Godot):

- Godot 4.7.1 project configuration using the Compatibility renderer.
- `CharacterBody2D` player controller with horizontal movement, gravity, jump, and jetpack thrust.
- Mouse aiming and a reusable projectile scene.
- A target dummy with health feedback.
- A procedural, modular placeholder character with head, body, arm, and leg pivots.
- Idle/walk animation tracks and an original geometric test arena with collision.
- GDD, architecture, and physics documentation.

Not implemented yet: full weapon inventory, four bomb types, finished maps, menus/audio, local Wi-Fi multiplayer, and final export testing.

Next stage: open the project in Godot 4.7.1, run the test arena, verify movement/landing/shooting, fix any runtime issues, and save a clean baseline before expanding.
