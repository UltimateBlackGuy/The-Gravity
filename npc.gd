extends Area2D
class_name NPC

@export var Name: String
@export var portrait: Texture
@onready var Sprite = $AnimatedSprite2D

var dialogue = [
	"Howdy, Im a NPC",
	"Uhh, I don't really know what to put here now",
	"Goodbye chumington"
]

signal PlayerInteracted(Dialogue)

var player_near = false

func _on_body_entered(body):
	if body is Player:
		player_near = true

func _on_body_exited(body):
	if body is Player:
		player_near = false

func _process(delta):
	if player_near and Input.is_action_just_pressed("Interact"):
		PlayerInteracted.emit(dialogue)
