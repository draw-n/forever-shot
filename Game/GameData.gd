extends Node

var available_ships = [1, 2, 3, 4, 5]
var main_menu = true
var tutorial = false
var game_over = false

func _process(_delta):
	if available_ships.empty():
		game_over = true

var speed = 100

var downCount = 5
var upCount = 5

var enemies_destroyed = 0

#if 10 enemies destroyed, add 3 to each count
