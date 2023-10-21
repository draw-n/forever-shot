extends Node2D

func _process(delta):
	if GameData.game_over == true:
		queue_free()
