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
	else:
		velocity.y = 0
	
	velocity.x = speed
	
	move_and_slide(velocity, Vector2.UP)
	
	
	if is_on_wall() and not checking_on_wall:
		checking_on_wall = true
		$wall_checker.start()
	


func _on_wall_checker_timeout():
	if is_on_wall():
		queue_free()


func _on_jump_timer_timeout():
	can_jump = true
