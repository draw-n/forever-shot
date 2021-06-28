extends Area2D

var direction
#0 is down, 1 is up, will change randomly

func _ready():
	if GameData.downCount > GameData.upCount:
		direction = 1
	elif GameData.upCount > GameData.downCount:
		direction = 0
	else:
		direction = randi()%2

func _process(delta):
	var motion = Vector2(-1, 0) * GameData.speed/5
	position += motion * delta 


func _on_Point_body_entered(body):
	match direction:
		0:
			GameData.downCount += 1
		1:
			GameData.upCount += 1
	queue_free()
	print(GameData.downCount)
	print(GameData.upCount)