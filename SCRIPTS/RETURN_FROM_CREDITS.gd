extends Button

func _ready():
	pass


func _process(delta):
	if Input.is_action_just_pressed('ui_cancel'):
		get_tree().change_scene('res://SCENES/MENU.tscn')


func _on_Button_button_down():
	get_tree().change_scene('res://SCENES/MENU.tscn')
