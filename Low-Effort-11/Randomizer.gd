extends Node2D

onready var enemySpawners = $EnemySpawners

var rng = RandomNumberGenerator.new()
onready var timer = $Timer

func _ready():
	randomize()


func _process(delta):
	pass


func _on_Timer_timeout():
	for i in enemySpawners.get_children():
		if rng.randi_range(1, 5) == i.num and i.num in GameData.available_ships:
			i.spawn = true
	timer.start()
