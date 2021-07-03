extends Node

onready var musicPlayer = $MusicPlayer
onready var soundPlayer = $SoundPlayer

var possible_music = [
	preload("res://Audio/Map.wav")
]

var possible_sounds = [
	preload("res://Audio/Jump3.wav"),
	preload("res://Audio/Hit_Hurt6.wav"),
	preload("res://Audio/Laser_Shoot5.wav"),
	preload("res://Audio/Pickup_Coin2.wav")
]

func _ready():
	randomize()

func play_random_music():
	var temp = floor(rand_range(0, possible_music.size()))
	musicPlayer.stream = possible_music[temp]
	musicPlayer.play()

func play_random_sound():
	var temp = floor(rand_range(0, possible_sounds.size()))
	soundPlayer.stream = possible_sounds[temp]
	soundPlayer.play()

func play_fixed_sound(sound):
	soundPlayer.stream = possible_sounds[sound]
	soundPlayer.play()
	
func play_fixed_music(music):
	musicPlayer.stream = possible_music[music]
	musicPlayer.play()
