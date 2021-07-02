extends Control

onready var score = $Label4

func _ready():
	self.hide()
	SoundManager.play_fixed_music(0)

func _process(_delta):
	self.visible = GameData.game_over
	score.text = "Ships Destroyed: " + str(GameData.enemies_destroyed)
	pass
