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

func _process(delta):
	self.visible = !GameData.main_menu
	match direction:
		0:
			label.text = str(GameData.downCount)
		1:
			label.text = str(GameData.upCount)
