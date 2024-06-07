extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	global_position = Vector2(236,228)  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global_position.y > 1500:
		get_tree().reload_current_scene()
