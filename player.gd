extends CharacterBody2D
class_name Player

@export var speed: int
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var lastdir := 0.0
func _physics_process(delta: float) -> void:
	#Gravity stuff
	
	if not is_on_floor():
		velocity.y += gravity * delta
		
	
	var direction := Input.get_axis("Left", "Right")
	lastdir = direction
	if direction:
		if lastdir < 0:
			$AnimatedSprite2D.flip_h = true
		elif  lastdir > 0:
			$AnimatedSprite2D.flip_h = false
		velocity.x = direction * speed 
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	move_and_slide()
