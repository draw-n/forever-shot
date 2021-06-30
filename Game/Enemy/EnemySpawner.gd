extends Position2D

const BASIC_ENEMY = preload("res://Enemy/Basic_enemy_projectile.tscn")

export (int) var num
var spawn = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if spawn == true:
		_spawn_enemy()
		spawn = false

func _spawn_enemy():
	var enemy = BASIC_ENEMY.instance()
	enemy.global_position = self.global_position
	get_tree().current_scene.add_child(enemy)
