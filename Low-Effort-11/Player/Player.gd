extends KinematicBody2D

const PROJECTILE_SCENE = preload("res://Player/Player_Projectile.tscn")

export var ACCELERATE = 2000
export var MAX_SPEED = 200
export var FRICTION = 2000

var velocity = Vector2.ZERO
var num_check = 0

onready var bulletSpawner = $BulletSpawner
onready var timer = $Timer

func _ready():
	randomize()

func _physics_process(delta):
	move_state(delta)
	
func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if Input.is_action_just_pressed("ui_up"):
		SoundManager.play_fixed_sound(0)
		if num_check > -64 and GameData.upCount > 0:
			self.global_position.y -= 32
			GameData.upCount -= 1
			num_check -= 32
	if Input.is_action_just_pressed("ui_down"):
		SoundManager.play_fixed_sound(0)
		if num_check < 64 and GameData.downCount > 0:
			self.global_position.y += 32
			GameData.downCount -= 1
			num_check += 32
	input_vector = input_vector.normalized()
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATE * delta)
	else: 
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
	velocity = move_and_slide(velocity)
	
	if Input.is_action_just_pressed("ui_accept"): #and timer.is_stopped():
		SoundManager.play_fixed_sound(2)
		var projectile = PROJECTILE_SCENE.instance()
		projectile.global_position = bulletSpawner.global_position
		get_tree().current_scene.add_child(projectile)
		#timer.start()

