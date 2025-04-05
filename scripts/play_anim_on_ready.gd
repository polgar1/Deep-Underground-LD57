extends AnimationPlayer

@export var anim_name : String
@export var timer : float = 0

func _ready() -> void:
	if timer != 0:
		await get_tree().create_timer(timer).timeout
	play(anim_name)
