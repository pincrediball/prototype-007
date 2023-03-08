extends StaticBody2D


func _on_area_2d_body_exited(body):
	if body.is_in_group("isBall") && (body as RigidBody2D).linear_velocity.y > 0:
		$Sprite2DLight.modulate = Color(1, 1, 1, 1)
