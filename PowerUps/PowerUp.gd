extends Area2D

export var grow_scale := 3.0

func _on_PowerUp_body_entered(body):
	if grow_scale == 1:  # reset scale
		body.scale = 1
	else:
		body.scale *= grow_scale
	queue_free()
