extends KinematicBody2D

var gravity = 700
var speed = Vector2.ZERO
var move_speed = 300
var jump_speed = 500


func _physics_process(delta: float) -> void:
	var _dir = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	speed.y += gravity*delta
	speed.x = _dir*move_speed
	speed = move_and_slide(speed)

