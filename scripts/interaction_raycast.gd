extends RayCast3D

@onready var cursor : ColorRect = get_tree().get_first_node_in_group("cursor")

func _process(delta: float) -> void:
	if is_colliding():
		var collider : StaticBody3D = get_collider()
		if collider and collider.collision_layer == 2:
			cursor.color = Color.RED
			if Input.is_action_just_released("Interact"):
				if collider.has_method("Interact"):
					collider.Interact()
	else:
		cursor.color = Color.WHITE
