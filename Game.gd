extends Node2D



func _physics_process(delta):
	pass

func _on_Water_body_entered(body):
	body.die()
