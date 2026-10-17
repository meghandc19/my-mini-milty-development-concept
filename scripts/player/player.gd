extends CharacterBody2D

@onready var character_anim: AnimationPlayer = $CharacterVisual/CharacterAnimation
@onready var character_visual: Node2D = $CharacterVisual

var health := 100

const SPEED = 300.0
const GROUND_ACCELERATION = 1800.0
const AIR_ACCELERATION = 1000.0
const GROUND_DECELERATION = 2200.0
const AIR_DECELERATION = 500.0

const JUMP_VELOCITY = -400.0
const GRAVITY = 1200.0
const MAX_FALL_SPEED = 600.0

const JETPACK_THRUST = 1600.0
const MAX_UPWARD_SPEED = -500.0

const FIRE_RATE = 0.15
var fire_timer := 0.0

const BULLET_SCENE = preload("res://scenes/weapons/bullet.tscn")

@onready var aim_pivot = $AimPivot


func _physics_process(delta):
	# Aim toward mouse
	aim_pivot.look_at(get_global_mouse_position())

	# Flip weapon when aiming left
	if get_global_mouse_position().x < global_position.x:
		aim_pivot.scale.y = -1
	else:
		aim_pivot.scale.y = 1

	# Shoot
	if fire_timer > 0:
		fire_timer -= delta

	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and fire_timer <= 0:
		shoot()
		fire_timer = FIRE_RATE

	# Gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	velocity.y = min(velocity.y, MAX_FALL_SPEED)

	# Normal jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Jetpack
	if Input.is_key_pressed(KEY_SHIFT):
		velocity.y -= JETPACK_THRUST * delta
		velocity.y = max(velocity.y, MAX_UPWARD_SPEED)

	# Horizontal movement
	var direction: float = Input.get_axis("ui_left", "ui_right")
	if Input.is_key_pressed(KEY_A):
		direction -= 1.0
	if Input.is_key_pressed(KEY_D):
		direction += 1.0
	direction = clampf(direction, -1.0, 1.0)

	var acceleration = GROUND_ACCELERATION
	var deceleration = GROUND_DECELERATION

	if not is_on_floor():
		acceleration = AIR_ACCELERATION
		deceleration = AIR_DECELERATION

	if direction != 0:
		velocity.x = move_toward(
			velocity.x,
			direction * SPEED,
			acceleration * delta
		)
		if direction > 0:
			character_visual.scale.x = 1.0
		else:
			character_visual.scale.x = -1.0

		if character_anim.current_animation != "walk":
			character_anim.play("walk")

	else:
		velocity.x = move_toward(
			velocity.x,
			0,
			deceleration * delta
		)

		if character_anim.current_animation != "idle":
			character_anim.play("idle")

	move_and_slide()


func shoot():
	var bullet = BULLET_SCENE.instantiate()
	get_tree().current_scene.add_child(bullet)

	var muzzle = $AimPivot/Weapon/Muzzle

	bullet.global_position = muzzle.global_position
	bullet.direction = muzzle.global_transform.x.normalized()


func take_damage(amount: int) -> void:
	health -= amount
	print("Player health:", health)

	if health <= 0:
		queue_free()
