extends CharacterBody2D


const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	# Add the gravity.
		if not is_on_floor():
			velocity.y += gravity * delta
			$AirTimer.start()

	# Handle on floor.
		if is_on_floor():
			velocity.y = 0
			$GroundTimer.start()

		move_and_slide()
		

func _on_ground_timer_timeout():
	print('AirTimer Stopped')
	position.y -= 50


func _on_air_timer_timeout():
	print('AirTimer Stopped')
	position.y += 50
