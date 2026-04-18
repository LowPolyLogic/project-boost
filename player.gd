extends RigidBody3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("boost"):
		# 3D Nodes store rotation in a matrix called a basis;
		# When you hold Space/W, yo   u go up in the Y axis * delta (FPS) * 1000.
		apply_central_force(basis.y * delta * 1000)
		
		# Essentially, delta makes it stable through FPS variations;
		# apply_... moves a rigid body with force/torque, but it needs a vector;
		# The vector determines the direction it moves in the XYZ axis, like so:
			   
	if Input.is_action_pressed("tilt_left"): # Makes the player rotate clockwise.
		apply_torque(Vector3(0, 0.0, 100.0) * delta)
	elif Input.is_action_pressed("tilt_right"): # Now guess what it does! hehe
		apply_torque(Vector3(0.0, 0.0, -100.0) * delta)
	else: pass

# This function does something when the 3D body collides with something else;
# match works like this: if you reach the landing pad, it prints "congrulation!";
# it prints "standing bye" when you start and you're standing on the launch pad;
# the underline case is for anything else, literally any other 3d object.
func _on_body_entered(body: Node) -> void:
	match body.name:
		"Landing Pad":
			print("Congrulation! Very Victory!")
			victorious_win(body.file_path)
		"Launch Pad":
			print("Standing bye four takeoffs!")
		_:
			var twin_die = create_tween()
			twin_die.tween_interval(1.0)
			set_process(false)
			print("NIGHTMARE OVER! YOU HAVE HITTED A KILL YOU")
			twin_die.tween_callback(get_tree().reload_current_scene)
			
# This function takes in level_two as the parameter, so thou must declareth str
func victorious_win(level_two: String) -> void:
		get_tree().call_deferred("change_scene_to_file", level_two)
