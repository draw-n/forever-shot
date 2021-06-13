extends Node2D

export (int) var num

func _on_HurtBox_area_entered(area):
	GameData.available_ships.erase(num)
	SoundManager.play_fixed_sound(1)
	queue_free()
