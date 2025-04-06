extends Camera3D

@export var sensitivity: float = 0.1


@export_range(-90.0, 90.0) var min_pitch: float = -45.0
@export_range(-90.0, 90.0) var max_pitch: float = 45.0
@export_range(-90.0, 90.0) var min_yaw: float = -45.0
@export_range(-90.0, 90.0) var max_yaw: float = 45.0

var pitch: float = 0.0  
var yaw: float = 0.0    
@onready var player : CharacterBody3D = $".."

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		yaw -= event.relative.x * sensitivity
		pitch -= event.relative.y * sensitivity

		pitch = clamp(pitch, min_pitch, max_pitch)
		yaw = clamp(yaw, min_yaw, max_yaw)

		rotation_degrees = Vector3(pitch, yaw, 0)
