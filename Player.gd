extends KinematicBody2D

var can_jump = true
var checking_on_wall = false
var jumpforce = -500
var velocity = Vector2(0,0)
var gravity = 25
var speed = 100

func _physics_process(delta):
	if Input.is_action_pressed("Jump") and is_on_floor() and can_jump:
		can_jump = false
		$jump_timer.start()
		velocity.y += jumpforce
	elif not is_on_floor():
		velocity.y += gravity
		$AnimatedSprite.play("jump")
	else:
		velocity.y = 0
		can_jump = true
		$AnimatedSprite.play("run")
	
	velocity.x = speed
	
	move_and_slide(velocity, Vector2.UP)
	
	
	


func die():
	if is_on_wall():
		position = get_parent().get_node("PlayerStartPosition").position


func _on_jump_timer_timeout():
	can_jump = true
