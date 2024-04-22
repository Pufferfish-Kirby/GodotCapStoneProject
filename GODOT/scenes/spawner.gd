extends Node2D

var player = null
var player_scene = preload("res://scenes/Test.tscn")
func _process(delta):
	if player == null:
		var new_obj = player_scene.instantiate()
		new_obj.position = position
		get_parent().add_child(new_obj)
		player = new_obj
