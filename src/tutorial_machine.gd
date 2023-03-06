extends Node2D

@onready
var ball: RigidBody2D = get_node("Ball")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_run_playbook_button_button_up():
	ball.linear_velocity = Vector2(0, -2000)
