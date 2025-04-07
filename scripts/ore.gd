extends StaticBody3D

@onready var quota : Label = get_tree().get_first_node_in_group("quota")
var collected : bool

func Interact():
	if not collected:
		quota.collected += 1
		$AudioStreamPlayer3D.play()
		visible = false
		collected = true
		await get_tree().create_timer(0.5).timeout
		queue_free()
