extends Area

# function which detects if player have passed through the block and then delete it
var contvidro = 0

func _ready():
	pass
	
func _process(delta):
	pass

func _on_Area_body_exited(body):
	if contvidro == 0:
		get_parent().queue_free()
	else:
		contvidro -= 1
