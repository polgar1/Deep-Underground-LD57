extends CharacterBody3D

@export var speed = 15
@onready var anim : AnimationPlayer = $Player/AnimationPlayer
@onready var movement_audio : AudioStreamPlayer3D = $AudioStreamPlayer3D
var dying : bool

func _ready() -> void:
	#Shader is disabled in the editor because it messes up things
	$Camera3D/Shader.visible = true

func _process(delta: float) -> void:
	var direction : Vector2 = Vector2(0, 0)
	if not dying:
		if Input.is_action_pressed("Down"):
			direction.y = -1
		elif Input.is_action_pressed("Up"):
			direction.y = 1
		else:
			direction.y = 0
	else:
		direction.y = -15
	
	if Input.is_action_just_released("Interact"):
		dying = true
	
	velocity.y = direction.y * speed * delta
	
	if velocity.y and not dying:
		if not movement_audio.playing:
			movement_audio.play()
		anim.play("ArmatureAction")
		if velocity.y > 0:
			anim.speed_scale = 0.5
		else:
			anim.speed_scale = -0.5
	else:
		movement_audio.stop()
		anim.pause()
	
	if Global.x == 404:
		dying = true
	
	move_and_slide()
