extends Camera2D

var camera_start_position = Vector2(242,154)
onready var player = get_parent().get_node("Player")
var camera_move_speed = 1

func _physics_process(delta):
	global_position.x += camera_move_speed
	
	
	
	if player.global_position.y > 400:
		die()
	
func die():
	global_position = camera_start_position
	player.global_position = get_parent().get_node("PlayerStartPosition").global_position
