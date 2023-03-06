extends Node2D

@export
var max_angle = 55

var is_going_up = true
var time_moving = 0.0
const up_time = 0.05
const down_time = 0.5

func _physics_process(delta):
	time_moving += delta

	if is_going_up:
		$CharacterBody2D.rotation_degrees = max_angle * (time_moving / up_time)
		if time_moving > up_time:
			is_going_up = false
			time_moving = 0.0

	else:
		$CharacterBody2D.rotation_degrees = max_angle * (1 - (time_moving / down_time))
		if time_moving > down_time:
			is_going_up = true
			time_moving = 0.0
