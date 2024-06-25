extends Node3D

var test3:int = 4

@export_enum ("Static", "Pacing Vertical", "Pacing Horizontal", "Circular")var movement_type:String = "Static"
@export var distance_from_center:float = 1.0
@export var enemy_mesh:MeshInstance3D # use this to re-use the script for multiple enemy types
@export var enemy_type:int = 1
# Not sure if we would need this:
@export_exp_easing var speed:float = 1.0 # Multiply this by delta. Below 1 slows. 


func _init():
	# something needed to be done here but idk what
	pass


func _process(delta):
	pass


func die():
	# Call when colliding with player and player is invulnerable (dashing)
	# You may want to use slots and signals: emit a signal from player 
	# if player is dashing and collides with player. Use die() as a slot
	# to determine is enemy is colliding with player.
	
	set_process(false) # we want to call this when death condition is met
	# aditional note: if we want to respawn enemies, reset position to default
	# and call set_process(true)
	pass
	

func move():
	# This function looks at our 'Movement Type' exported variable and
	# determines the correct movement pattern
	
	# NOTE: If the enemy collides with an object, reverse its movement direction
	# This can be done by multiplying the value by -1 (hopefully it's actually that easy)
	
	if movement_type == "Pacing Vertical":
		pass # we want the enemy to move up and down a distance (distance_from_center)
		
	elif movement_type == "Pacing Horizontal":
		pass # we want the enemy to move left and right a distance (distance_from_center)
		
	elif movement_type == "Circular":
		pass # we want the enemy to move in a circular pattern (radius = distance_from_center)
		
	# NOTE: We don't need an if for "Static" unless you want the enemy to face the player

# NOTE: Optional function if we want to revive the enemy after a period of time
func revive():
	# Set a timer which will respawn the enemy after a fixed number of seconds
	pass
	






