# MY MINI MILTY — Physics Design

## 1. Purpose

This document defines the intended physics behavior for MY MINI MILTY.

Physics is one of the most important parts of the game.

The goal is:

CLASSIC FEEL + SMOOTHER CONTROL + PREDICTABLE PHYSICS

The exact numerical values will be tuned during gameplay testing.

We should not blindly copy physics values from another game.

---

## 2. Main Physics Systems

The player physics will include:

- Gravity
- Horizontal movement
- Acceleration
- Deceleration
- Ground movement
- Jumping
- Air control
- Jetpack
- Collision
- Recoil
- Knockback

Projectile physics will be handled separately.

---

## 3. Gravity

Gravity continuously pulls the player downward.

The player should:

- Fall naturally
- Accelerate while falling
- Stop falling when landing on a surface
- Be affected by gravity when the jetpack is not being used

Gravity should feel responsive rather than extremely heavy.

The exact gravity value will be tuned during testing.

---

## 4. Horizontal Movement

The player should not instantly reach maximum speed.

Instead:

Input
↓
Acceleration
↓
Maximum Speed

When the player releases the movement button:

Current Speed
↓
Deceleration
↓
Stop

This should make movement feel smoother than instant direction changes.

---

## 5. Acceleration

Acceleration controls how quickly the player reaches maximum horizontal speed.

Higher acceleration:

- Faster response
- More immediate movement

Lower acceleration:

- Smoother movement
- More momentum

The final value will be determined through gameplay testing.

---

## 6. Deceleration

Deceleration controls how quickly the player slows down after releasing movement.

The game should avoid excessive sliding.

The player should feel responsive while still having some momentum.

---

## 7. Maximum Horizontal Speed

The player will have a maximum normal horizontal movement speed.

The speed should be:

- Fast enough for combat
- Easy to control
- Consistent
- Suitable for multiplayer

Special effects such as knockback may temporarily push the player beyond normal movement speed.

---

## 8. Direction Changes

Changing direction should feel responsive.

The player should be able to:

- Run left
- Run right
- Quickly change direction
- Control movement while airborne

Direction changes should not feel completely instant if momentum is being preserved.

---

## 9. Jumping

The player can jump when grounded.

A jump should:

- Apply upward velocity
- Temporarily overcome gravity
- Follow a predictable arc
- Allow the player to control horizontal movement

Jump strength will be tuned through testing.

The jump should work consistently across different frame rates.

---

## 10. Air Control

The player should retain horizontal control while airborne.

Air control may be slightly different from ground control.

Possible behavior:

Ground:
Strong horizontal control

Air:
Reduced but useful horizontal control

This allows skilled movement without making airborne movement uncontrollable.

---

## 11. Jetpack

The jetpack is a major movement feature.

The jetpack should apply upward force or upward velocity while active.

The player should be able to:

- Activate the jetpack
- Rise vertically
- Control horizontal movement
- Stop jetpack thrust
- Fall naturally after releasing it

The jetpack should not behave exactly like a normal jump.

It should provide controllable aerial movement.

---

## 12. Jetpack Fuel

The long-term design may include limited jetpack fuel.

Possible behavior:

Jetpack activated
↓
Fuel decreases

Jetpack released
↓
Fuel stops decreasing

Fuel empty
↓
Jetpack cannot provide normal thrust

Fuel can regenerate or recharge according to the final game design.

The exact fuel system will be decided during gameplay development.

For the first prototype, unlimited jetpack fuel may be used to make movement testing easier.

---

## 13. Ground Detection

The player needs reliable ground detection.

The game must determine whether the player is:

- On the ground
- In the air
- Landing
- Falling

Ground detection should be stable and should not randomly switch between states while standing on a platform.

---

## 14. Collision

The player must collide correctly with:

- Platforms
- Ground
- Walls
- Other appropriate physical objects

The collision system should prevent the player from passing through solid objects.

Collision should remain predictable during:

- Running
- Jumping
- Falling
- Jetpack movement
- Knockback

---

## 15. Recoil

Weapons may apply recoil to the player.

Recoil can affect:

- Horizontal velocity
- Vertical velocity
- Player movement

Different weapons may have different recoil strengths.

Example:

Light weapon:
Low recoil

Heavy weapon:
High recoil

Explosive weapon:
Large knockback

---

## 16. Knockback

Knockback is separate from normal movement.

Knockback can be caused by:

- Weapons
- Explosions
- Special abilities
- Environmental events

Knockback should apply a physical impulse to the player.

The amount should depend on the source.

Example:

Small explosion:
Small knockback

Large explosion:
Large knockback

---

## 17. Projectile Physics

Projectiles may have their own physics.

Important properties include:

- Projectile speed
- Direction
- Gravity influence
- Lifetime
- Collision
- Damage
- Explosion behavior

Different projectile types may behave differently.

Examples:

Bullet:
Fast and mostly straight

Rocket:
Slower with explosion

Grenade:
Affected strongly by gravity and bouncing

---

## 18. Physics and Frame Rate

Gameplay physics should remain consistent across different frame rates.

The game should use Godot's physics processing system correctly.

Important physics calculations should not depend incorrectly on the number of rendered frames.

---

## 19. Multiplayer Considerations

Physics must eventually work consistently in multiplayer.

The final multiplayer system should account for:

- Player movement
- Jumping
- Jetpack
- Projectiles
- Recoil
- Knockback
- Collision
- Prediction/interpolation where required

Multiplayer physics will be designed after the single-player physics is stable.

Do not build complicated multiplayer physics during the first prototype.

---

## 20. Physics Tuning

Physics values should not be considered final until tested.

Important values to tune include:

- Gravity
- Acceleration
- Deceleration
- Maximum speed
- Jump strength
- Air control
- Jetpack thrust
- Jetpack fuel
- Recoil
- Knockback
- Projectile speed

Testing should focus on how the game feels rather than simply matching numerical values from another game.

---

## 21. Physics Testing Order

Physics will be tested in this order:

1. Gravity
2. Ground detection
3. Horizontal movement
4. Acceleration
5. Deceleration
6. Jump
7. Air control
8. Jetpack
9. Collision
10. Recoil
11. Knockback
12. Projectile physics

Each major system should work before adding the next one.

---

## 22. First Physics Prototype

The first prototype should be intentionally simple.

Initial target:

- One player
- One platform
- Gravity
- Left/right movement
- Jump
- Basic collision
- Camera

After this works correctly:

- Add air control
- Add jetpack
- Tune movement
- Add combat physics

Do not add weapons, multiplayer, destruction or modding during the first physics prototype.

---

## 23. Current Physics Stage

Current stage: MOVEMENT/PLATFORM PROTOTYPE — NOT YET RUNTIME-VERIFIED IN THIS PACKAGE

The current controller script includes code for:

- Horizontal acceleration and deceleration.
- Gravity and maximum fall speed.
- Grounded jumping.
- Jetpack thrust and maximum upward speed.
- Built-in `CharacterBody2D` movement and collision.
- Simple original platforms with `StaticBody2D` and `CollisionShape2D`.

Next: run the project in Godot 4.7.1 and verify landing, platform edges, jump timing, mid-air direction changes, jetpack behavior, and projectile collisions before tuning or extending the physics.
