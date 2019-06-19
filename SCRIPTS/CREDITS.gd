extends KinematicBody2D

# Apply movement to credits text
export var up_speed = 30

func _ready():
	pass

func _process(delta):
	position.y -= up_speed * delta
