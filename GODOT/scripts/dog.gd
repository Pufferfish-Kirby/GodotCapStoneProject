extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var is_affected_by_gravity = false
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		if is_affected_by_gravity:
			velocity.y += gravity * delta
		else:
			pass
	move_and_slide()




func _on_bottom_of_dog_body_entered(body):
	if body.name == 'egg':
		get_tree().reload_current_scene()




func _on_top_of_dog_body_entered(body):
	if body.name == 'egg':
		queue_free()


func _on_drop_distance_body_entered(body):
	if body.name == 'egg':
		is_affected_by_gravity = true
