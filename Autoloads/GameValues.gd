extends Node

@export var current_level = 0

func move_to_level(level):
	match level:
		0:
			get_tree().change_scene_to_file("res://levels/level0.tscn")
