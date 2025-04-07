extends Node3D

func _process(delta: float) -> void:
	if Input.is_action_just_released("Interact"):
			get_tree().change_scene_to_file("res://scenes/" + str(Global.current_day) + ".tscn")
	
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
