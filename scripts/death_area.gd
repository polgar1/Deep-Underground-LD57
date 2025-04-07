extends Area3D



func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		Dialogic.start("death")
		queue_free()
