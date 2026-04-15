extends Node3D # Acesses everything on the node it's attached to

# Declaring for further use
var timer: float = 0.0
var if_spcb_prss: int = 0

# Called when the node enters the scene tree for the first time.
# Essentially just a "start" to the program
func _ready() -> void:
	# Just clowning on ArcSys, hahaha.
	print("Do dreams come true...? NIGHTMARE ONE! COMMENCE!")
	# Following the course's orders... my way.
	print("DO NOT DISMAY, LIFE GOES ON")
	print("7x6")
	# Strong typing is useful becaues it optimizes performance
	var strong_typing: int = 6^9
	print(strong_typing)

# Called every frame. 'delta' is the elapsed time since the previous frame.
# Essentially works as a tick rate, which is how it checks for frame updates.
# _process runs code every frame, delta keeps it consistent at every frame rate
func _process(_delta: float) -> void:
# Checks if spacebar was pressed
# If i used is_action_pressed instead, it would print at every single frame
	if Input.is_action_just_pressed("ui_accept"):
		print("Spacebar was pressed")
		if_spcb_prss += 1
		print("NIGTHMARE+ " + str(if_spcb_prss) + " TIME!") # luv u ArcSys
