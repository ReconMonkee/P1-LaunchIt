extends RigidBody2D



func _ready():
	pass # Replace with function body.

func _draw():
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, Color.black)
	
