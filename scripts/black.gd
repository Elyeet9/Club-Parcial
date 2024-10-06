class_name Black extends CharacterBody2D

@export var speed = 300.0

func _physics_process(delta: float) -> void:
	var direction = Vector2(
		Input.get_axis('blackLeft', 'blackRight'),
		Input.get_axis('blackUp', 'blackDown')
	)
	velocity = direction * speed
	move_and_slide()
	global_position = global_position.clamp(
		Vector2.ZERO,
		get_viewport_rect().size
	)
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		print("Black is touching ", collision.get_collider().name)
