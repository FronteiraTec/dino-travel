extends Area

func _on_Area_body_entered(body):
	print('OVER')
	body.queue_free()
	get_tree().change_scene('res://SCENES/GAME_OVER.tscn')
	