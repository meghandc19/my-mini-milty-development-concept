# MY MINI MILTY — Game Design Document

## 1. Game Overview

**Game Name:** MY MINI MILTY

**Genre:** 2D Physics-Based Shooter

**Engine:** Godot 4.7.1

**Language:** GDScript

MY MINI MILTY is an original 2D side-view physics shooter inspired by the classic feel of fast 2D combat games.

The goal is to create a polished game with:

- Fast movement
- Jetpack movement
- Aiming
- Shooting
- Weapons
- Grenades
- Physics
- Knockback
- Platforms
- Offline gameplay
- Local/network multiplayer
- Optional environmental destruction
- Modern UI
- Community-created content in the long term

The game should feel familiar and fun while having its own original implementation, graphics, maps, characters, sounds, physics and systems.

---

## 2. Design Philosophy

The core design target is:

**CLASSIC FEEL + IMPROVED PHYSICS + BETTER SYSTEMS**

The game should feel:

- Fun
- Responsive
- Smooth
- Predictable
- Fast
- Balanced
- Suitable for multiplayer

The project should be developed gradually rather than trying to build every feature at once.

---

## 3. Game Modes

### Offline

Initial offline features may include:

- Single player
- Bots
- Training
- Custom matches
- Offline maps
- Offline progression
- Settings

### Multiplayer

Initial multiplayer target:

- LAN
- Wi-Fi
- Hotspot/local network

Future multiplayer features may include:

- Internet multiplayer
- Matchmaking
- Ranked matches
- Server-authoritative gameplay

Complex online infrastructure will not be built during the first prototype.

---

## 4. Core Player Gameplay

The player will eventually have:

- Running
- Jumping
- Jetpack
- Air control
- Gravity
- Collision
- Aiming
- Shooting
- Health
- Damage
- Death
- Respawn

Movement and physics are one of the most important parts of the game.

---

## 5. Combat

The combat system will eventually support:

- Weapons
- Projectiles
- Bullets
- Reloading where appropriate
- Recoil
- Knockback
- Grenades
- Explosions
- Damage

Weapon behavior should be data-driven whenever practical.

Example weapon properties:

- Damage
- Projectile speed
- Explosion radius
- Knockback
- Fire rate
- Ammo
- Reload time

---

## 6. Physics

Physics should provide the classic fast 2D shooter feeling while improving smoothness and control.

Important values include:

- Acceleration
- Deceleration
- Gravity
- Jump strength
- Jetpack thrust
- Air control
- Horizontal movement
- Recoil
- Knockback
- Projectile speed
- Collision behavior
- Character stability

Physics values should be tuned through testing instead of being randomly changed.

---

## 7. Maps

Maps will contain:

- Platforms
- Walls
- Ground
- Spawn points
- Boundaries
- Objects
- Backgrounds

Maps should eventually be data-driven so new maps can be added without modifying core gameplay code.

---

## 8. Optional Destruction

Environmental destruction is a future feature.

Normal competitive maps may remain stable.

Special maps can support destruction.

Possible materials:

- Wood — easy to break
- Concrete — strong
- Metal — very resistant
- Glass — shatters
- Ground — may partially collapse
- Special materials — custom behavior

Example:

Rocket → Explosion → Terrain damage → Hole/debris/environment change

This system will be developed only after the basic physics system is stable.

---

## 9. Bots

Bots are a future system.

Possible bot abilities:

- Navigation
- Player detection
- Targeting
- Shooting
- Movement
- Jetpack movement
- Difficulty levels

Bots will be developed after the basic player and combat systems work.

---

## 10. User Interface

The UI should be:

- Clean
- Fast
- Simple
- Modern
- Easy to navigate

Future UI screens may include:

- Main menu
- Offline
- Multiplayer
- Player profile
- Customization
- Skins
- Maps
- Settings
- Match results
- Ranking
- Mod browser

---

## 11. Community Content

The long-term goal is to make MY MINI MILTY more than a single fixed game.

Creators should eventually be able to create controlled community content such as:

- Skins
- Avatars
- Maps
- Weapons
- Sounds
- Music
- Effects
- Backgrounds
- Objects
- Plants
- Decorations

The core game provides systems such as:

- Rendering
- Physics
- Collision
- Player
- Weapons
- Camera
- Animation
- Effects

Creators mainly provide content through an official controlled system.

---

## 12. Modding

The long-term mod system should use a controlled and sandboxed API.

Possible APIs:

- Player API
- Weapon API
- Map API
- Object API
- Physics API
- Event API
- UI API
- Gameplay API
- Multiplayer API

The complete mod API will not be built before the core game works.

---

## 13. Mod Security

Mods must not receive unrestricted computer access.

A mod should not be able to:

- Read private files
- Access passwords
- Access browser data
- Execute arbitrary programs
- Modify unrelated files
- Steal information
- Run unrestricted malicious code

Different mod types may have different permissions.

Example:

**Skin**
- Assets only

**Map**
- Map + approved objects

**Weapon**
- Weapon definitions

**Gameplay**
- Controlled gameplay API

**Advanced**
- Sandboxed API

---

## 14. Data-Driven Design

The project should avoid hard-coding game values whenever practical.

Instead of putting every weapon property directly into gameplay code, weapon data should eventually be stored separately.

Example:

```text
Rocket:
    damage = 100
    explosion_radius = 4
    knockback = 20
    projectile_speed = 30

---

## 15. Graphics

The game will use an original visual identity.

Graphics should include:

- Original player designs
- Original weapons
- Original maps
- Original effects
- Original backgrounds
- Smooth animations
- Explosions
- Weapon effects
- Modern UI

All assets must be original or properly licensed.

---

## 16. Mobile

Android/mobile support is a long-term goal.

Possible controls:

- Virtual joystick
- Aim
- Fire
- Jetpack
- Weapon switch
- Grenade
- Jump

Mobile optimization will not take priority over getting the core gameplay working.

---

## 17. Development Roadmap

### Phase 0 — Planning

- GDD
- Architecture
- Physics design
- Mod design
- Version control strategy

### Phase 1 — Core Prototype

- Player
- Movement
- Jump
- Jetpack
- Physics
- Collision
- Camera

### Phase 2 — Combat

- Weapons
- Shooting
- Projectiles
- Recoil
- Damage
- Health
- Death
- Respawn
- Grenades
- Explosions

### Phase 3 — Map System

- Platforms
- Walls
- Spawn points
- Boundaries
- Map loading

### Phase 4 — Bots

- Navigation
- Detection
- Targeting
- Shooting
- Movement
- Jetpack AI
- Difficulty

### Phase 5 — Offline Mode

- Main menu
- Match setup
- Bots
- Maps
- Settings
- Customization

### Phase 6 — Multiplayer

- LAN
- Wi-Fi
- Hotspot
- Later internet multiplayer
- Server authority
- Matchmaking
- Ranked

### Phase 7 — UI/UX

- Main menu
- Player profile
- Match selection
- Settings
- Loadout
- Skin selection
- Map selection
- Multiplayer lobby
- Results
- Ranking

### Phase 8 — Destruction

Optional environmental destruction system.

### Phase 9 — Mod API

Controlled community content and gameplay API.

### Phase 10 — Creator Ecosystem

Official website, mod browser, creator profiles, uploads, ratings, moderation and community features.

---

## 18. Originality and Legal Protection

MY MINI MILTY is an original project.

We will not copy or redistribute:

- Original Mini Militia source code
- Original assets
- Original maps
- Original characters
- Original sounds
- Original animations
- Original UI
- Original logos
- Other copyrighted/proprietary material

Before public or commercial release, the name **MY MINI MILTY** should be checked for trademark and other legal issues.

---

## 19. Development Rule

Development follows:

**PLAN → BUILD → TEST → FIX → SAVE/COMMIT → NEXT**

The project should be developed gradually.

Do not build advanced multiplayer before the core player works.

Do not build the mod marketplace before the mod architecture exists.

Do not build complicated destruction before the physics foundation is stable.

---

## 20. Long-Term Vision

MY MINI MILTY should eventually become both:

1. A polished standalone 2D physics shooter.
2. A platform where creators can build community experiences using a controlled engine/API.

The core engine and source code remain protected.

The ultimate goal is a large ecosystem of community-created experiences while keeping the game secure, performant and maintainable.