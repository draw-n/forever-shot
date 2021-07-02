extends Node2D

onready var enemySpawners = $EnemySpawners

onready var timer = $Timer

func _ready():
	randomize()

func _on_Timer_timeout():
	if GameData.main_menu == false and GameData.tutorial == false and GameData.game_over == false:
		if len(GameData.available_ships) > 1:
			for i in enemySpawners.get_children():
				if randi() % 6 + 1 == i.num and i.num in GameData.available_ships:
					i.spawn = true
			timer.start(2)
		elif len(GameData.available_ships) == 1:
			for i in enemySpawners.get_children():
				if i.num in GameData.available_ships:
					i.spawn = true
			timer.start(.5)

