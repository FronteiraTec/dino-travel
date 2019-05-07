extends Control


func _ready():
	pass


func _physics_process(delta):
	pass


func _on_VOLTAR_pressed():
	get_tree().change_scene('res://SCENES/MENU.tscn')

func _on_Button_pressed():
	get_tree().change_scene('res://SCENES/MAIN_SCENE.tscn')

func _on_Button2_pressed():
	get_tree().change_scene('res://SCENES/LEVELSELECTION.tscn')

func _on_Button3_pressed():
	get_tree().change_scene('res://SCENES/LEVELSELECTION.tscn')

func _on_Button4_pressed():
	get_tree().change_scene('res://SCENES/LEVELSELECTION.tscn')

func _on_Button5_pressed():
	get_tree().change_scene('res://SCENES/LEVELSELECTION.tscn')
