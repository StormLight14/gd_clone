extends Node

@export var current_level = 0

func move_to_level(level):
	match level:
		0:
			get_tree().change_scene_to_file("res://levels/level0.tscn")
		1:
			get_tree().change_scene_to_file("res://levels/level1.tscn")
		2:
			get_tree().change_scene_to_file("res://levels/level2.tscn")
		3:
			get_tree().change_scene_to_file("res://levels/level3.tscn")
		4:
			get_tree().change_scene_to_file("res://levels/level4.tscn")
		5:
			get_tree().change_scene_to_file("res://levels/level5.tscn")
