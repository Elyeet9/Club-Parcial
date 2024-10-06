class_name White extends CharacterBody2D

@export var speed = 300.0

func _physics_process(delta: float) -> void:
	var direction = Vector2(
		Input.get_axis('whiteLeft', 'whiteRight'),
		Input.get_axis('whiteUp', 'whiteDown')
	)
	velocity = direction * speed
	move_and_slide()
	global_position = global_position.clamp(
		Vector2.ZERO,
		get_viewport_rect().size
	)
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		print("White is touching ", collision.get_collider().name)
