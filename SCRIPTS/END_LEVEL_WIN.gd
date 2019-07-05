extends Area

func _ready():
	pass


func _on_Area_body_entered(body):
	if body.get_name() == 'player':
#		print('YOU WIN!')
		# you win scene
		get_tree().change_scene('res://SCENES/UI/LEVEL_SELECTION.tscn')
