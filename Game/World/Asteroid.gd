extends Node2D

onready var sprite = $Sprite
onready var tween = $Tween

var direction = 1

func _ready():
	move_up()
	tween.seek((randi() % 6 + 1)/10.0)

func _on_Tween_tween_completed(object, key):
	match direction:
		0:
			move_up()
			direction = 1
		1:
			move_down()
			direction = 0

func move_up():
	tween.interpolate_property(sprite, "position", Vector2(0,1.5), Vector2(0,-1.5), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()


func move_down():
	tween.interpolate_property(sprite, "position", Vector2(0,-1.5), Vector2(0,1.5), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
