extends CharacterBody2D

var health := 100

@onready var body_visual = $Polygon2D

@onready var health_bar = $HealthBar


func take_damage(amount):
	health -= amount
	health_bar.value = health

	print("Enemy health:", health)

	body_visual.modulate = Color(1, 0.3, 0.3)

	await get_tree().create_timer(0.08).timeout

	if is_instance_valid(body_visual):
		body_visual.modulate = Color.WHITE

	if health <= 0:
		queue_free()
