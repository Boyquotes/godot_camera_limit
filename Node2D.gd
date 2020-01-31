extends Node2D


var speed = -100

func _physics_process(delta: float) -> void:
	position.y += speed*delta
