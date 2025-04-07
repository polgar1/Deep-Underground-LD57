extends Node2D

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
func _on_button_button_up() -> void:
	OS.shell_open("https://store.steampowered.com/app/3565260/Shadows_of_Midnight__They_Watch_Me_Sleep/")


func _on_button_2_button_up() -> void:
	get_tree().quit()
