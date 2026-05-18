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
	$GravityAtrophy.visible = false
	$ClimConFever.visible = false
	$CarbMonoPoison.visible = false
	$ReturnButton.visible = false
	$Puzzle/File4.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Switch.play()
	overlay.texture = newOverlay
	$StaticText.visible = true
	$FlavorText.visible = true
	user_input.editable = true
	$OnSwitch.visible = false


func _on_line_edit_text_submitted(new_text: String) -> void:
	$Enter.play()
	if new_text == "crambe":
		$StaticText.visible = false
		$Puzzle.visible = true
	if new_text == "EMBRACE THE WHOLE":
		$Puzzle/File4.visible = true
	user_input.clear()


func _on_texture_button_pressed() -> void:
	$Click.play()
	print("SUCCESS")


func _on_file_1_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$GravityAtrophy.visible = true
	$ReturnButton.visible = true


func _on_cardio_button_pressed() -> void:
	$Click.play()
	$GravityAtrophy.text = "Wellness Check – Parvo Trand
Day 165 of Voyage

Patient entered medbay seeking aid with apparent muscle degradation. Patient felt fatigued and weak. Patient comment upon intake was “I feel like everything is pushing in around me.” Upon regular medical examination, patient does seem to be experiencing acute muscle atrophy. Prescribed patient with 45 minutes of EMBRACE a cycle. Will continue to monitor and follow up if the need arises."
	$GravityAtrophy/CardioButton.visible = false


func _on_file_2_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$ClimConFever.visible = true
	$ReturnButton.visible = true


func _on_an_button_pressed() -> void:
	$Click.play()
	$ClimConFever.text = "Wellness Check - Dawn Varren
Day 322 of Voyage

Patient entered medbay looking pale and heavily perspirating. Patient reported symptoms similar to the common influenza virus that was eradicated decades ago. Patient commented that “the air smelled different from normal.” Alerting maintenance that a climate control issue has occurred in the habitation pods. Prescribed patient THE anitbiotic and 3 days of self-quarantine. Set up meals for patient to receive correct nutrients to dissuade any bacteria from spreading in the body.
"
	$ClimConFever/AnButton.visible = false


func _on_file_3_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$CarbMonoPoison.visible = true
	$ReturnButton.visible = true


func _on_colonists_button_pressed() -> void:
	$Click.play()
	$CarbMonoPoison.text = "Wellness Check - Landon Whitlock
Day 502 of Voyage

Patient was rushed into medbay by medical personnel. Patient was reported to have been hallucinating. Bystanders and medical personnel heard patient mumbling about “the Long Burrower in the rock.” Final diagnosis was decided to be carbon monoxide poisoning. Maintenance has been alerted to the issue. We are hoping that the climate control issues that have been arising do not effect anymore of the WHOLE.
"
	$CarbMonoPoison/ColonistsButton.visible = false


func _on_return_button_pressed() -> void:
	$Click.play()
	$ReturnButton.visible = false
	$GravityAtrophy.visible = false
	$ClimConFever.visible = false
	$CarbMonoPoison.visible = false
	$Puzzle.visible = true
	


func _on_file_4_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$StaticText.text = "COME JOIN OUR ETERNAL EMBRACE"
	$StaticText/TextureButton.visible = false
	$StaticText.visible = true
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://scenes/bodyPassage.tscn")


func _on_line_edit_text_changed(new_text: String) -> void:
	pass # Replace with function body.
