extends Control


func _ready():
	$"START"
	
	$"CREDITS"
	
	$"QUIT"
	
func _physics_process(delta):
	# MOUSE ON BUTTOMS
	if $"START".is_hovered() == true: $"START".grab_focus()
	elif $"CREDITS".is_hovered() == true: $"CREDITS".grab_focus()
	elif $"QUIT".is_hovered() == true: $"QUIT".grab_focus()


func _on_START_pressed():
	get_tree().change_scene('res://SCENES/UI/LEVEL_SELECTION.tscn')


func _on_CREDITS_pressed():
	get_tree().change_scene('res://SCENES/UI/CREDITS.tscn')


func _on_QUIT_pressed():
	get_tree().quit()
