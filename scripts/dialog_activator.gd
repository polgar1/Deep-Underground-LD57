extends Node

class_name DialogActivator

@export var requiredX := 0
@export var timer : float = 0
@export var dialogic_timeline : String
enum states {READY, X}
@export var activate_on : states = states.READY

func _ready() -> void:
	if activate_on == states.READY:
		if  timer != 0:
			await get_tree().create_timer(timer).timeout
		Dialogic.start(dialogic_timeline)
		queue_free()
	
	

func _process(delta: float) -> void:
	if activate_on == states.X and Global.x == requiredX:
		Dialogic.start(dialogic_timeline)
		Global.x = 0
		queue_free()
