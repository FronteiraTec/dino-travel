extends Area

func _process(delta):
	pass
#	print('right', PLAYER.right)
#	print('left', PLAYER.left)
#	print('forward', PLAYER.forward)
#	print('backward', PLAYER.backward)

func _on_Area_body_entered(body):

	if body == PLAYER:
		print('QUALQUER COISA AQUI')
		if PLAYER.right == true:
			ITEM.move.y = ITEM.go
			
		elif PLAYER.left == true:
			ITEM.move.y = ITEM.go
		
		elif PLAYER.backward == true:
			ITEM.move.y = ITEM.go
		
		elif PLAYER.forward == true:
			ITEM.move.y = ITEM.go
