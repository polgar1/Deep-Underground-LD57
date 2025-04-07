extends RayCast3D

@onready var cursor : ColorRect = get_tree().get_first_node_in_group("cursor")
var game_over := preload("res://scenes/game_over.tscn")

func _process(delta: float) -> void:
	if is_colliding():
		var collider : StaticBody3D = get_collider()
		if collider and collider.collision_layer == 2:
			cursor.color = Color.RED
			if Input.is_action_just_released("Interact"):
				if collider.has_method("Interact"):
					collider.Interact()
		elif collider and collider.collision_layer == 8:
			get_tree().get_first_node_in_group("deathAnim").play("death")
			await get_tree().create_timer(0.48).timeout
			get_tree().change_scene_to_packed(game_over)
		else:
			cursor.color = Color.WHITE
	else:
		cursor.color = Color.WHITE
