extends RigidBody2D

export var min_speed = 150 # Minimun Speed
export var max_speed = 250 # Maximum Speed

func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free() 
	
