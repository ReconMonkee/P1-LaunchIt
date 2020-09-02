extends Area2D
signal hit

func _draw():
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, Color.red)

func _on_Area2D_body_entered(body):
	hide() 
	emit_signal("hit")
	$CollisionShape2D.set_deferred("disabled", true)
