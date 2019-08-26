extends Label

onready var var_time
var label_text

func _ready():
	pass
	
func _process(delta):
	var_time = get_parent().seconds
	label_text = "Time = " + str(var_time)
	set_text(label_text)