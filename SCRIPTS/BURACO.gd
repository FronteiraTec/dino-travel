extends Area


func _on_Area_body_entered(body):
	body.queue_free()