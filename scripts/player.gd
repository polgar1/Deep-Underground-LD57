extends CharacterBody3D

@export var speed = 15
@onready var anim : AnimationPlayer = $Player/AnimationPlayer

func _process(delta: float) -> void:
	var direction : Vector2 = Vector2(0, 0)
	if Input.is_action_pressed("Down"):
		direction.y = -1
	elif Input.is_action_pressed("Up"):
		direction.y = 1
	else:
		direction.y = 0
	
	velocity.y = direction.y * speed * delta
	
	if velocity.y:
		anim.play("ArmatureAction")
	else:
		anim.pause()
	
	move_and_slide()
