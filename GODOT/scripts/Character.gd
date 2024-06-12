extends Sprite2D

const RESPAWN_HEIGHT = 1000.0
const RESPAWN_POINT = Vector2(236,228)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		if global_position.y <= -5200:
			respawntime()
		
func respawntime():
	global_position = RESPAWN_POINT
