extends KinematicBody

var motion = Vector3()

const GRAVITY = -10
const speed = 120

var move = false
var dir = 'forward'


func _physics_process(delta):
	motion.x = 0
	motion.y = GRAVITY
	motion.z = 0


	if move == true:
		move = false
		if dir == 'forward':
			motion.x = +speed # forward

		elif dir == 'backward':
			motion.x = -speed # backward

		elif dir == 'left':
			motion.z = -speed # left

		elif dir == 'right':
			motion.z = +speed # right



	if Input.is_action_just_pressed('ui_forward'):
		move = true

	elif Input.is_action_just_pressed('right'):
		# play player rotation animation
		rotate_y(deg2rad(-90))

		if dir == 'forward':
			dir = 'right'

		elif dir == 'backward':
			dir = 'left'

		elif dir == 'left':
			dir = 'forward'

		elif dir == 'right':
			dir = 'backward'
	elif Input.is_action_just_pressed('left'):
		# play player rotation animation
		rotate_y(deg2rad(90))
	
		if dir == 'forward':
			dir = 'left'
			
		elif dir == 'backward':
			dir = 'right'
			
		elif dir == 'left':
			dir = 'backward'
			
		elif dir == 'right':
			dir = 'forward'


	motion = move_and_slide(motion)