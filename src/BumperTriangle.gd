extends StaticBody2D

func on_ball_exit(ball: RigidBody2D):
	if $SlingArea2D.overlaps_body(ball):
		var direction = (ball.position - self.position).normalized()
		var impulse = direction * 1000
		ball.apply_impulse(impulse)
