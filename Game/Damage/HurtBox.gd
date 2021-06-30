extends Area2D

const HIT_EFFECT = preload("res://Damage/HitEffect.tscn")

onready var position2D = $Position2D

func create_hit_effect():
	var hit = HIT_EFFECT.instance()
	hit.global_position = position2D.global_position
	get_tree().current_scene.call_deferred("add_child", hit)

func _on_HurtBox_area_entered(area):
	create_hit_effect()


func _on_HurtBox_body_entered(body):
	create_hit_effect()
