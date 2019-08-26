extends Area

func _ready():
	pass


func _on_Area_body_entered(body):
	#print(body.get_name())
	if body.get_name() == "player":
		# game over scene
		get_tree().change_scene('res://SCENES/UI/LEVEL_SELECTION.tscn')

