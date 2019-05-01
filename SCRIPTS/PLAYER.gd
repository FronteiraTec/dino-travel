extends KinematicBody

var motion = Vector3()
var move = 1

const speed = 100
const stop = 0
const time_to_move = 50

var right 	 = false
var left 	 = false
var forward  = true
var backward = false


func _ready():
	pass
	
func _physics_process(delta):
	motion.x = stop
	motion.y = stop
	motion.z = stop
	
	
	if move % time_to_move == 0 and move != 0:
		if right      == true: motion.z = -speed
		elif left     == true: motion.z = speed
		elif forward  == true: motion.x = -speed
		elif backward == true: motion.x = +speed


	if Input.is_action_just_pressed('left'):
		if left == true:
			right 	 = false
			left 	 = false
			forward  = false
			backward = true

		elif backward == true:
			right 	 = true
			left 	 = false
			forward  = false
			backward = false	

		elif right == true:
			right 	 = false
			left 	 = false
			forward  = true
			backward = false

		elif forward == true:
			right 	 = false
			left 	 = true
			forward  = false
			backward = false
		rotate_y(deg2rad(90))
		
	elif Input.is_action_just_pressed('right'):
		if left == true:
			right 	 = false
			left 	 = false
			forward  = true
			backward = false

		elif backward == true:
			right 	 = false
			left 	 = true
			forward  = false
			backward = false	

		elif right == true:
			right 	 = false
			left 	 = false
			forward  = false
			backward = true

		elif forward == true:
			right 	 = true
			left 	 = false
			forward  = false
			backward = false
		rotate_y(deg2rad(-90))

	# reset the variable due to memory resources
	if move > 1000: move = 0
	else: move += 1
		
		
	motion = move_and_slide(motion)
	
