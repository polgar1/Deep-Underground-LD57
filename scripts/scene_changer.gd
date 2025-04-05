extends Node

class_name SceneChanger

@export_file var nextScene : String
@export var requiredX : int
@onready var transition : AnimationPlayer = get_tree().get_first_node_in_group("trAnim")

func _process(delta: float) -> void:
	if Global.x == requiredX:
		transition.Transition(nextScene)
		Global.x = 0
		queue_free()
