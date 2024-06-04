extends CharacterBody2D


const SPEED = 20.0
const JUMP_VELOCITY = -400.0

var timed = true
var stopped = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if timed:
		if not stopped:
			print('Moving forward')
			$Timer.start(2)
			velocity.x = SPEED
		else:
			print('Stopped after moving forward')
			$Timer3.start(2)
			velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		if not stopped:
			print('Moving backward')
			$Timer2.start(2)
			velocity.x = SPEED * -1
		else:
			print('Stopped after moving backward')
			$Timer4.start(2)
			velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_timer_timeout():
	print('Timer 1 Stopped')
	stopped = true



func _on_timer_2_timeout():
	print('Timer 2 Stopped')
	stopped = true


func _on_timer_3_timeout():
	print('Timer 3 Stopped')
	stopped = false
	timed = false


func _on_timer_4_timeout():
	print('Timer 4 Stopped')
	stopped = false
	timed = true
