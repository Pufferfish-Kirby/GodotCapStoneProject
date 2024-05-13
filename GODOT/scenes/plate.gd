extends StaticBody2D


func _ready():
	set_process(false)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame .
func _process(delta):
	global_position = global_position


func _on_area_2d_body_entered(body):
	if body.name == 'egg':
		set_process(true)
		$BreakTimer.start(3)


func _on_break_timer_timeout():
	print('BreakTimer Stopped')
	queue_free()
