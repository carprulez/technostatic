extends Control


func _on_screen_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mindTerminal.tscn")
