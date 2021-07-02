extends Label

func _process(_delta):
	self.text = str(GameData.enemies_destroyed)
	if GameData.main_menu == true or GameData.game_over == true:
		self.hide()
	else:
		self.show()
