extends RigidBody3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		# 3D Nodes store rotation in a matrix called a basis;
		# When you press space, you go up in the Y axis * delta (FPS) * 1000.
		apply_central_force(basis.y * delta * 1000)
		
		# Essentially, delta makes it stable through FPS variations;
		# apply_... moves a rigid body with force/torque, but it needs a vector;
		# The vector determines the direction it moves in the XYZ axis, like so:
		
	if Input.is_action_pressed("ui_left"): # Makes the player rotate clockwise.
		apply_torque(Vector3(0, 0.0, 100.0) * delta)
	elif Input.is_action_pressed("ui_right"): # Now guess what it does! hehe
		apply_torque(Vector3(0.0, 0.0, -100.0) * delta)
	else: pass
