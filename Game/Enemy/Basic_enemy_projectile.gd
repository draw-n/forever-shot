extends Node2D

const POINT_SCENE = preload("res://Player/Point.tscn")

func _ready():
	set_process(true)

func _process(delta):
	var motion = Vector2(-1, 0) * GameData.speed/5
	position += motion * delta 

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_HitBox_area_entered(area):
	queue_free()


func _on_HurtBox_area_entered(area):
	spawn_point()
	GameData.enemies_destroyed += 1
	queue_free()


func spawn_point():
	var point = POINT_SCENE.instance()
	point.global_position = self.global_position
	get_tree().current_scene.call_deferred("add_child", point)
