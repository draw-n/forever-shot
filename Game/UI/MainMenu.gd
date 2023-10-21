extends Control

func _ready():
	self.show()

func _on_Button_pressed():
	self.hide()
	GameData.main_menu = false
	GameData.tutorial = true
