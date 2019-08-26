extends AnimationPlayer

func _ready():
	var anim = get_node(".").get_animation("default")
	# set animation speed
	get_node(".").set_speed_scale(1)
	
	
func _process(delta):	
	# run animation
	if Input.is_action_just_pressed('ui_forward'):
		get_node(".").play("default")
		
#	PLAY ROTATION ANIMATION // ANIMATION NEED TO BE CREATED
#	elif Input.is_action_just_pressed('ui_left'):
#		get_node(".").play("rotation")

		
# 	PLAY ROTATION ANIMATION // ANIMATION NEED TO BE CREATED
#	elif Input.is_action_just_pressed('ui_right'):
#		get_node(".").play("rotation")

#	else:
#		get_node(".").play('idle')

