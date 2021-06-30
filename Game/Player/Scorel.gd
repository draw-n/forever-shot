extends Label

func _process(delta):
	self.text = str(GameData.enemies_destroyed)
	self.visible = !GameData.main_menu
