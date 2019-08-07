extends KinematicBody2D

const MOVE_SPEED = 500

onready var raycast = $RayCast2D

func _ready():
	yield(get_tree(), "idle_frame")
	get_tree().call_group("zombies", "set_player")
	
func _physics_process(delta):
	var move_vec = Vector2()
	
	if Input.is_action_pressed("move_up"):
		move_vec.y -= 1
	if Input.is_action_pressed("move_down"):
		move_vec.y = 1
	if Input.is_action_pressed("move_left"):
		move_vec.x -= 1