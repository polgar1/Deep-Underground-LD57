extends Area3D

@export var audio : AudioStreamPlayer3D



func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		audio.play()
		queue_free()
