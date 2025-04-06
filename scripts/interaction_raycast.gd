extends RayCast3D

func _process(delta: float) -> void:
	if is_colliding():
		var collider : StaticBody3D = get_collider()
		if collider.collision_layer == 2 and Input.is_action_just_released("Interact"):
			if collider.has_method("Interact"):
				collider.Interact()
