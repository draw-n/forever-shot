extends Node

var available_ships = [1, 2, 3, 4, 5]
var main_menu = true
var game_over = false

func _process(delta):
	if available_ships.empty():
		game_over = true

var speed = 100

var downCount = 5
var upCount = 5
