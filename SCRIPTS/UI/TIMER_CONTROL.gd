extends Control

onready var timer = get_node('Timer')
var seconds = 30

func _ready():
	timer.set_wait_time(1)
	timer.start()
	
	
func _on_Timer_timeout():
	seconds -= 1
	if seconds < 0:
		get_tree().change_scene('res://SCENES/UI/GAME_OVER.tscn')
	
#	print(timer)
#	print(seconds)