extends Node2D

func _ready():
	$BackgroundMusic.play()

func _physics_process(delta):
	pass

func _on_Water_body_entered(body):
	reset()
	
func reset():
	$Camera2D.global_position =  Vector2(242,154)
	$Player.global_position = $PlayerStartPosition.global_position
	$Player.die()
