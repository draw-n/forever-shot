extends TextureRect

func _process(_delta):
	if GameData.main_menu == false:
		if GameData.tutorial == true:
			self.show()
			if Input.is_action_pressed("ui_accept"):
				GameData.tutorial = false
		else:
			self.hide()
	else:
		self.hide()
