extends PanelContainer

var ballScene = preload("res://Ball.tscn")

var componentScenesMap: Dictionary = {
	"bumperCircle" = preload("res://BumperCircular.tscn")
}

const ballStartX = 480
const ballStartY = 730

func startMachine():
	get_tree().create_timer(0.5).timeout.connect(startFlipperLeft)
	get_tree().create_timer(0.35).timeout.connect(startFlipperRight)
	var ball: RigidBody2D = ballScene.instantiate()
	ball.position = Vector2(ballStartX, ballStartY)
	ball.linear_velocity = Vector2(0, -1500)
	add_child(ball)

func startFlipperLeft():
	$FlipperLeft.isRunning = true
	
func startFlipperRight():
	$FlipperRight.isRunning = true

func _on_drainage_body_entered(body):
	if body.is_in_group("isBall"):
		var ball = body as RigidBody2D
		ball.queue_free()

func _can_drop_data(_at_position, data):
	return data is Dictionary and data["isToolboxItem"]

func _drop_data(at_position, data):
	var component = componentScenesMap[data.key].instantiate() as Node
	component.position = at_position
	add_child(component)
