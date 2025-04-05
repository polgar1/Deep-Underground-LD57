extends AnimationPlayer

var scene : PackedScene

func _ready() -> void:
	play("fadeOut")

func Transition(nextScene : String):
	await get_tree().process_frame
	play("fadeIn")
	var scene = load(nextScene)

func _on_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fadeIn":
		get_tree().change_scene_to_packed(scene)
