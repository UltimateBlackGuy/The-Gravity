extends Node

@onready var dialogueBox = $CanvasLayer/DialogueBox
@onready var portrait = $CanvasLayer/NPCPortrait
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_npc_player_interacted(Dialogue: Dictionary) -> void:
	pass # Replace with function body.
