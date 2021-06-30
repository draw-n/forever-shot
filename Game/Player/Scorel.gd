extends Label

func _process(delta):
	self.text = str(GameData.enemies_destroyed)
