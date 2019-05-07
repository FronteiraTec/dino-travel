extends RigidBody

var stop = 0
var go = 100
var move = Vector3()


func _ready():
	move.z = stop
	move.x = stop

func _process(delta):
	move.y = stop
	
	
#	move = move_and_slide(move)s

