extends SpotLight3D

@onready var cam : Camera3D = $"../Camera3D"
var speed : float = 2

func _process(delta: float) -> void:
	global_rotation.x = rotate_toward(global_rotation.x, cam.global_rotation.x, speed * delta)
	global_rotation.y = rotate_toward(global_rotation.y, cam.global_rotation.y, speed * delta)
