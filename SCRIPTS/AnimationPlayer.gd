extends AnimationPlayer

func _ready():
	pass
	
func _process(delta):
	# load the animation
	var anim = get_node(".").get_animation("default")
	
	# play animation
	get_node(".").play("default")
	
	# set animation speed
	get_node(".").set_speed_scale(0.8)