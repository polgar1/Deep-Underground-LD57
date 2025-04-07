extends Label

@export var dialogic_timeline : String
var collected : int = 0:
	get():
		return collected
	set(value):
		collected = value
		text = str(collected) + "/" + str(quota)
		if collected == quota:
			Dialogic.start(dialogic_timeline)
@export var quota : int 

func _ready() -> void:
	text = str(collected) + "/" + str(quota)
