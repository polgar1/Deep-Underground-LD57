extends Label

var collected : int = 0:
	get():
		return collected
	set(value):
		collected = value
		text = str(collected) + "/" + str(quota)
@export var quota : int 

func _ready() -> void:
	text = str(collected) + "/" + str(quota)
