extends Camera2D


onready var player : KinematicBody2D = get_parent().get_node("Player")
var camera_move_speed = 1

func _physics_process(delta):
	global_position.x += camera_move_speed
	global_position.y = player.global_position.y
	
func _on_StaticBody2D_body_entered(body):
	get_parent().reset()
