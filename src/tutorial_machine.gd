extends Node2D

var ballScene = preload("res://Ball.tscn")
var ball: Node

const ballStartX = 1022
const ballStartY = 735

func _on_run_playbook_button_button_up():
	get_tree().create_timer(0.5).timeout.connect(startFlipperLeft)
	get_tree().create_timer(0.35).timeout.connect(startFlipperRight)
	var ball: RigidBody2D = ballScene.instantiate()
	ball.position = Vector2(ballStartX, ballStartY)
	ball.linear_velocity = Vector2(0, -2000)
	$BallsGroup.add_child(ball)
	
func startFlipperLeft():
	$FlipperLeft.isRunning = true
	
func startFlipperRight():
	$FlipperRight.isRunning = true

func _on_drainage_body_entered(body):
	if body == ball:
		pass
		# Cannot move a RigidBody2D like this, needs some more work
	#	ball.position = Vector2(ballStartX, ballStartY)
	#	ball.linear_velocity = Vector2.ZERO
