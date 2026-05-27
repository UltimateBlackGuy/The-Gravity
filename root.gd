extends Node2D

@onready var dialogueBox = $CanvasLayer/DialogueBox
@onready var portrait = $CanvasLayer/NPCPortrait
@onready var DialogueTimer = $CanvasLayer/DialogueBox/DialogueTimer
@onready var KillDialogueTimer = $GetRidOfDialogue

var currentLine = 0
var istalkingToNPC = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if istalkingToNPC == false:
		dialogueBox.visible = false
	
	


func _on_npc_player_interacted(Dialogue: Array) -> void:
	if istalkingToNPC:
		return
		
	istalkingToNPC = true
	dialogueBox.visible = true
	for line in Dialogue:
		dialogueBox.text = line
		DialogueTimer.start()
		await DialogueTimer.timeout
	
	istalkingToNPC = false
	

func _on_get_rid_of_dialogue_timeout() -> void:
	dialogueBox.visible = false
	portrait.visible = false
	istalkingToNPC = false
