extends Node3D

# This essentially means the position is x = 2, y = 5 and z = 0.
# Example: var first_vector: Vector3 = Vector3(2, 5, 0).

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		# Makes y increase with delta, which means you hold spacebar to move up.
		position.y += delta
		
	if Input.is_action_pressed("ui_left"): # Makes the player rotate clockwise
		rotate_z(delta)
	elif Input.is_action_pressed("ui_right"):
		rotate_z(-delta)
	else: pass
# The challenge above was rotating counter-clockwise, so I used elif and -delta.
