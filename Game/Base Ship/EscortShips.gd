extends Node2D

export (int) var num

onready var animationPlayer = $AnimationPlayer
onready var node2D = $Node2D
onready var tween = $Tween

var direction = 1

func _ready():
	pass
	move_up()
	tween.seek(num/10.0)
	#animationPlayer.play("Move")
	#animationPlayer.seek(num, true)
	

func _on_HurtBox_area_entered(_area):
	GameData.available_ships.erase(num)
	GameData.upCount /= 2
	GameData.downCount /= 2
	GameData.speed += 75
	SoundManager.play_fixed_sound(1)
	queue_free()


func _on_Tween_tween_completed(object, key):
	match direction:
		0:
			move_up()
			direction = 1
		1:
			move_down()
			direction = 0

func move_up():
	tween.interpolate_property(node2D, "position", Vector2(0,2), Vector2(0,-2), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()


func move_down():
	tween.interpolate_property(node2D, "position", Vector2(0,-2), Vector2(0,2), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
