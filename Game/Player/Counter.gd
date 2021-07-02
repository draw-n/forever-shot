extends TextureRect

export (int) var direction
export (Texture) var up
export (Texture) var down

onready var label = $Label

func _ready():
	match direction:
		0:
			self.texture = down
		1:
			self.texture = up

func _process(_delta):
	if GameData.main_menu == true or GameData.game_over == true:
		self.hide()
	else:
		self.show()
	match direction:
		0:
			label.text = str(GameData.downCount)
		1:
			label.text = str(GameData.upCount)
