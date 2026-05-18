extends Control

func _on_play_pressed() -> void:
	$Click.play()
	await($Click.finished)
	get_tree().change_scene_to_file("res://scenes/intro.tscn")

func _on_quit_pressed() -> void:
	$Click.play()
	await($Click.finished)
	get_tree().quit()
