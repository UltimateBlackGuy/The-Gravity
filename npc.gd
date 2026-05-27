extends Area2D
class_name NPC

@export var Name: String
@export var portrait: Texture
@onready var Sprite = $AnimatedSprite2D

var dialogue = {
	"Line1" = "Howdy I am a NPC",
	"Line2" = "Idk bro",
	"Line3" = "Alright See ya"
}

signal PlayerInteracted(Dialogue)

func _on_body_entered(body: Player) -> void:
	if body and Input.is_action_just_pressed("Interact"):
		PlayerInteracted.emit(dialogue)
