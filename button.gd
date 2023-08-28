extends TextureButton

@export var level = 0

func _on_pressed():
	GameValues.move_to_level(level)
