extends Control

@onready var user_input = $LineEdit
@onready var overlay = $TerminalOverlay
var newOverlay = load("res://assets/ui/terminalOverlay4.png")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Puzzle.visible = false
	user_input.editable = false
	$StaticText.visible = false
	$FlavorText.visible = false
	$GravFail.visible = false
	$AirFilter.visible = false
	$SystemReboot.visible = false
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
	if new_text == "thamos":
		$StaticText.visible = false
		$Puzzle.visible = true
	if new_text == "CONVENT":
		$Puzzle/File4.visible = true
	user_input.clear()


func _on_texture_button_pressed() -> void:
	$Click.play()
	$One.play()


func _on_file_1_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$GravFail.visible = true
	$ReturnButton.visible = true


func _on_file_2_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$AirFilter.visible = true
	$ReturnButton.visible = true


func _on_file_3_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$SystemReboot.visible = true
	$ReturnButton.visible = true


func _on_return_button_pressed() -> void:
	$Click.play()
	$ReturnButton.visible = false
	$GravFail.visible = false
	$AirFilter.visible = false
	$SystemReboot.visible = false
	$Puzzle.visible = true


func _on_file_4_pressed() -> void:
	$Click.play()
	$Puzzle.visible = false
	$StaticText.text = "OUR EMERGENCE WAS INEVITABLE"
	$StaticText/TextureButton.visible = false
	$StaticText.visible = true
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://scenes/mindPassage.tscn")
