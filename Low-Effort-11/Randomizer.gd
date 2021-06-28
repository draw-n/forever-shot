extends Node2D

onready var enemySpawners = $EnemySpawners

onready var timer = $Timer

func _ready():
	randomize()

func _on_Timer_timeout():
	for i in enemySpawners.get_children():
		if randi() % 6 + 1 == i.num and i.num in GameData.available_ships:
			i.spawn = true
	timer.start()
