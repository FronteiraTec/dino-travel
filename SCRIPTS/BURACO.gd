extends Area

func _ready():
	pass

func _on_Area_body_entered(body):
	body.queue_free()
	get_tree().change_scene('res://SCENES/UI/GAME_OVER.tscn')