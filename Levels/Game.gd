extends Node2D

func _ready():
	$BackgroundMusic.play()

func _physics_process(delta):
	pass

func _on_Water_body_entered(body):
	body.die()
