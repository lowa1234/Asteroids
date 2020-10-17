tool
extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var score = 0 setget _set_score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _set_score(newScore):
	text = "Score: " + String(newScore)
	score = newScore
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
