extends Node2D

@onready
var ball: RigidBody2D = get_node("Ball")

const ballStartX = 500
const ballStartY = 435

func _on_run_playbook_button_button_up():
	ball.linear_velocity = Vector2(0, -2000)

func _on_drainage_body_entered(body):
	if body == ball:
		pass
		# Cannot move a RigidBody2D like this, needs some more work
	#	ball.position = Vector2(ballStartX, ballStartY)
	#	ball.linear_velocity = Vector2.ZERO
