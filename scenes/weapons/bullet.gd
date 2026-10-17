extends Area2D

const SPEED = 900.0
const LIFE_TIME = 2.0
const DAMAGE = 10

var direction := Vector2.RIGHT
var life := 0.0


func _physics_process(delta: float) -> void:
	rotation = direction.angle()
	position += direction * SPEED * delta

	life += delta

	if life >= LIFE_TIME:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("take_damage"):
		body.take_damage(DAMAGE)

	queue_free() # Replace with function body.


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullets"):
		queue_free()
		area.queue_free() # Replace with function body.
