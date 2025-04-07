extends Area3D


func _on_body_entered(body: Node3D) -> void:
		Global.looking_at_enemy = true


func _on_body_exited(body: Node3D) -> void:
		Global.looking_at_enemy = false
