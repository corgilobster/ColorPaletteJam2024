extends Node3D

# NOTE: You might want to get rid of RigidBody3D for something that isn't affected by 
# gravity. If you run the game right now, the enemy will fall down and flop on its side. :(

@export_enum ("Static", "Vertical", "Horizontal", "Circular")var movement_type:String = "Static"
@export var distance_from_center:float = 1.0
@export var enemy_mesh:MeshInstance3D # use this to re-use the script for multiple enemy types
# To make this code re-usable for shark, we can set enemy_type to 2.
@export_range(1, 2) var enemy_type:int = 1 # Determine's health

var health:int

# Not sure if we would need this:
@export_exp_easing var speed:float = 1.0 # Multiply this by delta. Below 1 slows. 


func _init():
	if enemy_type == 2:
		health = 2
	else:
		health = 1

# NOTE: Not sure if we should use _physics_process() instead
func _process(delta):
	move()


func die():
	# Call when colliding with player and player is invulnerable (dashing)
	# You may want to use slots and signals: emit a signal from player 
	# if player is dashing and collides with player. Use die() as a slot
	# to determine is enemy is colliding with player.
	
	set_process(false) # we want to call this when death condition is met
	# NOTE: if we want to respawn enemies, reset position to default
	# and call set_process(true)
	pass
	

func move():
	# This function looks at our 'Movement Type' exported variable and
	# determines the correct movement pattern
	
	# NOTE: If the enemy collides with an object, reverse its movement direction
	# This can be done by multiplying the value by -1 (hopefully it's actually that easy)
	
	if movement_type == "Vertical":
		pass # we want the enemy to move up and down a distance (distance_from_center)
		
	elif movement_type == "Horizontal":
		pass # we want the enemy to move left and right a distance (distance_from_center)
		
	elif movement_type == "Circular":
		pass # we want the enemy to move in a circular pattern (radius = distance_from_center)
		
	# NOTE: We don't need an if for "Static" unless you want the enemy to face the player

# NOTE: Optional function if we want to revive the enemy after a period of time
func revive():
	# Set a timer which will respawn the enemy after a fixed number of seconds
	pass
	
