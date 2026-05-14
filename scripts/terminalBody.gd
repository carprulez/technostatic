extends Control

@onready var user_input = $LineEdit
@onready var overlay = $TerminalOverlay
var newOverlay = load("res://assets/ui/terminalOverlay2.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Puzzle.visible = false
	user_input.editable = false
	$StaticText.visible = false
	$FlavorText.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	overlay.texture = newOverlay
	$StaticText.visible = true
	$FlavorText.visible = true
	user_input.editable = true


func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text == "cambre":
		$StaticText.visible = false
		$Puzzle.visible = true
	user_input.clear()


func _on_texture_button_pressed() -> void:
	print("SUCCESS")


func _on_file_1_pressed() -> void:
	$Puzzle.visible = false
	$Puzzle/File1/GravityAtrophy.visible = true


func _on_cardio_button_pressed() -> void:
	$GravityAtrophy.text = "Wellness Check – Parvo Trand
Day 165 of Voyage

Patient entered medbay seeking aid with apparent muscle degradation. Patient felt fatigued and weak. Patient comment upon intake was “I feel like everything is pushing in around me.” Upon regular medical examination, patient does seem to be experiencing acute muscle atrophy. Prescribed patient with 45 minutes of EMBRACE a cycle. Will continue to monitor and follow up if the need arises."
	$GravityAtrophy/CardioButton.visible = false
