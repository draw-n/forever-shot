extends Control

func _ready():
	self.show()
	get_tree().paused = true

func _on_Button_pressed():
	self.hide()
	get_tree().paused = false
