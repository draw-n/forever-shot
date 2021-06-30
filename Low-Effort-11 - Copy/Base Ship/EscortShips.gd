extends Node2D

export (int) var num

func _on_HurtBox_area_entered(area):
	GameData.available_ships.erase(num)
	GameData.upCount /= 2
	GameData.downCount /= 2
	SoundManager.play_fixed_sound(1)
	queue_free()
