extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Explode1.play()
	await get_tree().create_timer(5).timeout
	$Explode2.play()
	await get_tree().create_timer(3).timeout
	$Explode3.play()
	await $Fade.fade(1.0, 5).finished
	get_tree().change_scene_to_file("res://scenes/playerAppreciation.tscn")
	
