extends ParallaxBackground

onready var parallaxLayer = $ParallaxLayer

func _process(delta):
	parallaxLayer.motion_offset.x += -GameData.speed/10 * delta
