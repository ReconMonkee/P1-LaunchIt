extends RigidBody2D



func _ready():
	pass # Replace with function body.

func _draw():
	draw_circle(Vector2 (50,50), $CollisionShape2D.shape.radius, Color.black)
	
