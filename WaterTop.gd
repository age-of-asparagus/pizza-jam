extends Area2D

func _proccess():
	global_position = get_node("../Player").global_position
	$Splash.emitting = true

func _on_WaterTop_body_entered(body):
	global_position = body.global_position
	$Splash.emitting = true
