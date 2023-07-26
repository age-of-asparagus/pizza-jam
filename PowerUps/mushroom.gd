extends Area2D





func _on_mushroom_body_entered(body):
	body.scale *= 3
	queue_free()
