extends KinematicBody2D

var can_jump = true
var checking_on_wall = false
var jumpforce = -500
var velocity = Vector2(0,0)
var gravity = 25

func _ready():
	velocity.x = get_parent().get_node("Camera2D").camera_move_speed * 60


func _physics_process(delta):
	
	if Input.is_action_pressed("Jump") and is_on_floor():
		can_jump = false
		velocity.y += jumpforce
	elif not is_on_floor():
		$AnimatedSprite.play("jump")
	else:
		$AnimatedSprite.play("run")
	
	velocity.y += gravity
	var new_velocity = move_and_slide(velocity, Vector2.UP)
	velocity.y = new_velocity.y
