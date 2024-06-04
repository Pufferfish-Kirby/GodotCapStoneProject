extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position = global_position


func _on_area_2d_body_entered(body):
	if body.name == "egg":
		get_tree().reload_current_scene()
