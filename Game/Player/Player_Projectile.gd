extends Node2D

const SPEED = 100

func _ready():
	set_process(true)

func _process(delta):
	var motion = Vector2(1, 0) * SPEED
	position += motion * delta 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_HitBox_area_entered(area):
	queue_free()
