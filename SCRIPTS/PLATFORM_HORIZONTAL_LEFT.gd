extends KinematicBody

var motion = Vector3()
var speed = +50
var limit_inferior = -20
var limit_superior = +20

func _ready():
	pass

func _physics_process(delta):


	# PARA ESQUERDA E PARA DIREITA
	motion.z -= speed * delta
	if motion.z <= limit_inferior: speed *= -1
	elif motion.z >= limit_superior: speed *= -1


	# PARA FRENTE E PARA TRAS
#	motion.x -= speed
#	if motion.x < limit_inferior: speed *= -1
#	elif motion.x > limit_superior: speed *= -1


	motion = move_and_slide(motion)