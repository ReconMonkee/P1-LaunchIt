extends RigidBody2D


export var xAngle : int = 0
export var yAngle : int = 0
export var strength : int = 0
var launch_check = 0
func _process(delta):
	if launch_check == 0:
		if Input.is_action_just_pressed("x_force_down") && xAngle <= 10:
			xAngle -=1
		if Input.is_action_just_pressed("x_force_up") && xAngle >= 0:
			xAngle +=1
			print(xAngle)
		if Input.is_action_just_pressed("y_force_down") && yAngle >= -10:
			yAngle +=1
		if Input.is_action_just_pressed("y_force_up") && yAngle <= 0:
			yAngle -=1
			print(yAngle)
		if Input.is_action_just_pressed("strength_down"):
			strength -=10
		if Input.is_action_just_pressed("strength_up"):
			strength +=10
		if Input.is_action_just_pressed("launch"):
			var xVelocity = strength * xAngle
			var yVelocity = strength * yAngle
			apply_impulse(Vector2.ZERO, Vector2(xVelocity, yVelocity))
			print(yVelocity)
			print(xVelocity)
			launch_check += 1

func _draw():
	draw_circle(Vector2.ZERO, $CollisionShape2D.shape.radius, Color.black)
