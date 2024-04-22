extends CharacterBody2D


const JUMP_VELOCITY = -400.0
const CRUSH_MOVEMENT = 250.0
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	# Add the gravity.
		if not is_on_floor() and not is_on_wall():
			velocity.y = 0
			$AirTimer.start()
		# if not on ground
		else:
			velocity.y += gravity * delta
			$GroundTimer.start()

		move_and_slide()


	
func _on_ground_timer_timeout():
	print('GroundTimer Stopped')
	position.y += 250


func _on_air_timer_timeout():
	print('AirTimer Stopped')
	position.y -= 250


func _on_area_2d_body_entered(body):
	if body.name == "egg":
		get_tree().reload_current_scene()
