extends KinematicBody2D

var can_jump = true
var checking_on_wall = false
var jumpforce = -500
var velocity = Vector2(0,0)
var gravity = 25

func _ready():
	velocity.x = get_parent().get_node("Camera2D").camera_move_speed * 60


func _physics_process(delta):
	print(is_on_wall())
	if Input.is_action_pressed("Jump") and is_on_floor():
		can_jump = false
		velocity.y += jumpforce
	elif not is_on_floor():
		velocity.y += gravity
		$AnimatedSprite.play("jump")
	else:
		velocity.y = 0
		if not is_on_wall() and not $AnimatedSprite.animation == "run":
			print(is_on_floor())
			$AnimatedSprite.play("run")
	
	
	move_and_slide(velocity, Vector2.UP)
	
	






func _on_jump_timer_timeout():
	can_jump = true
