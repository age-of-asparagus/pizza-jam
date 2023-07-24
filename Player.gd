extends KinematicBody2D

var jumpforce = -500
var velocity = Vector2(0,0)
var gravity = 25
var speed = 100

func _physics_process(delta):
	
	if Input.is_action_pressed("Jump") and is_on_floor():
		velocity.y += jumpforce
	elif not is_on_floor():
		velocity.y += gravity
	else:
		velocity.y = 0
	
	velocity.x = speed
	
	move_and_slide(velocity, Vector2.UP)
