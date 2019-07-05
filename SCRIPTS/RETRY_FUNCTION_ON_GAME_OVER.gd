extends Button

# retry function on gameover scene
func _ready():
	pass

func _on_RETRY_pressed():
	get_tree().change_scene('res://SCENES/UI/LEVEL_SELECTION.tscn')