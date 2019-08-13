extends Area

func _ready():
	pass

func _on_Area_body_entered(body):
	if body.get_name() == 'player':
		get_tree().change_scene('res://SCENES/UI/GAME_OVER.tscn')
