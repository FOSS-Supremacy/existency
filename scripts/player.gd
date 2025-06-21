extends CharacterBody2D

@onready var weapon_light = $weapon_flashlight

func _ready():
	weapon_light.visible = false

func _input(event):
	if Input.is_action_pressed("player_up"):
		position.y = position.y - 8
	if Input.is_action_pressed("player_down"):
		position.y = position.y + 8
	if Input.is_action_pressed("player_left"):
		position.x = position.x - 8
	if Input.is_action_pressed("player_right"):
		position.x = position.x + 8
	if Input.is_action_pressed("flashlight_toggle"):
		weapon_light.visible = not weapon_light.visible
	if Input.is_action_just_pressed("full_screen"):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
