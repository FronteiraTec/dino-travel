extends AnimationPlayer

func _ready():
	var anim = get_node(".").get_animation("default")

func _process(delta):	
	# play animation
	if Input.is_action_just_pressed('ui_forward'):
		get_node(".").play("default")
	
	# set animation speed
	get_node(".").set_speed_scale(1)