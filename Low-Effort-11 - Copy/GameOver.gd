extends Control

func _ready():
	self.hide()
	SoundManager.play_fixed_music(0)

func _process(delta):
	self.visible = GameData.game_over
	pass
