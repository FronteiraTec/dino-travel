extends Button

func _ready():
	pass

func _on_LEVEL_SELECTION_pressed():
	get_tree().change_scene('res://SCENES/UI/LEVEL_SELECTION.tscn')
