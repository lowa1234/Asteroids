extends "res://scripts/Asteroid.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var ui = get_tree().current_scene.get_node("UI")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Asteroid_body_entered(body):
	if "Balle" in body.name:
		ui.augmente_score(10)
		queue_free()
	if "Payer" in body.name:
		ui.reduire_vie()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
