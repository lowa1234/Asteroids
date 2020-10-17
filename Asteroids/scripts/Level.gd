extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var AsteroidLarge = preload("res://scenes/Asteroid.tscn")
var AsteroidMoyen = preload("res://scenes/AsteroidMoyen.tscn")
var AsteroidPetit = preload("res://scenes/AsteroidPetit.tscn")
onready var player = get_tree().current_scene.find_node("Player")
export var level = 0
export var astParLvl = 2
export var saferadius = 200
export var maxSpeed = 200
export var minSpeed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_child_count() == 0:
		level += 1
		var avoid = player.position
		for i in range(level * astParLvl):
			var child
			match randi() %3:
				0: child = AsteroidPetit.instance()
				1: child = AsteroidMoyen.instance()
				2: child = AsteroidLarge.instance()
			var where = avoid
			while (where - avoid).length() <= saferadius:
				where.x = rand_range(0, get_viewport().size.x)
				where.y = rand_range(0, get_viewport().size.y)
			child.position = where
			var angle = randi() * PI * 2
			var speed = rand_range(minSpeed, maxSpeed)
			child.linear_velocity = Vector2(speed, 0). rotated(angle)
			add_child(child)
	pass
