extends AnimatedSprite

func _ready():
	play("Hit")

func _on_HitEffect_animation_finished():
	queue_free()
