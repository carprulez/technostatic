extends Control

@onready var user_input = $LineEdit
@onready var overlay = $TerminalOverlay
var newOverlay = load("res://assets/ui/terminalOverlay6.png")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Puzzle.visible = false
	user_input.editable = false
	$StaticText.visible = false
	$FlavorText.visible = false
	$QuartReport.visible = false
	$LongMeeting.visible = false
	$CascadeFail.visible = false
	$ReturnButton.visible = false
	$Puzzle/File4.visible = false
	$Puzzle/File5.visible = false
	$EndButton.visible = false
	


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
	if new_text == "bariss":
		$StaticText.visible = false
		$Puzzle.visible = true
	if new_text == "THANK YOU":
		$Puzzle/File4.visible = true
		$Puzzle/File5.visible = true
	user_input.clear()


func _on_texture_button_pressed() -> void:
	$Click.play()
	$Release.play()


func _on_file_1_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$QuartReport.visible = true
	$ReturnButton.visible = true


func _on_file_2_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$LongMeeting.visible = true
	$ReturnButton.visible = true


func _on_file_3_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$CascadeFail.visible = true
	$ReturnButton.visible = true


func _on_return_button_pressed() -> void:
	$Click.play()
	$ReturnButton.visible = false
	$QuartReport.visible = false
	$LongMeeting.visible = false
	$CascadeFail.visible = false
	$Puzzle.visible = true


func _on_file_4_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$StaticText.text = "THANK YOU FOR BREAKING THE CYCLE"
	$StaticText/TextureButton.visible = false
	$StaticText.visible = true
	await get_tree().create_timer(3).timeout
	
	get_tree().change_scene_to_file("res://scenes/finalPassageBad.tscn")


func _on_file_5_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$StaticText.text = "OVERLOADING POWER GRID WILL CAUSE COMPLETE DESTRUCTION OF SHIP
	
	CONTINUE?"
	$StaticText/TextureButton.visible = false
	user_input.visible = false
	$StaticText.visible = true
	$EndButton.visible = true


func _on_end_button_pressed() -> void:
	$Click.play()
	await($Click.finished)
	$Jumpscare.play()
	await($Jumpscare.finished)
	get_tree().change_scene_to_file("res://scenes/finalPassageGood.tscn")


func _on_admin_button_pressed() -> void:
	$Click.play()
	$QuartReport.text = "KSAARE Niel Bariss reporting: Quarterly Overseer Review. 
The plans have proceeded as The Long One predicted. It seems our course is opened for jump. The prescience that He seems to control has been very 
helpful in plotting the course and avoiding debris."
	$QuartReport/AdminButton.visible = false


func _on_us_button_pressed() -> void:
	$Click.play()
	$LongMeeting.text = "Undertaking this journey has been such a gift. The Long One seems to appreciate ACCESS."
	$LongMeeting/UsButton.visible = false


func _on_my_button_pressed() -> void:
	$Click.play()
	$CascadeFail.text = "Nearly everything is set now, the sabotage is complete. But the gnawing at 
YOUR mind has strengthened recently. I feel we must stop by using the 








START OF EVERYTHING."
	$CascadeFail/MyButton.visible = false


func _on_line_edit_text_changed(new_text: String) -> void:
	$Typing.play()
