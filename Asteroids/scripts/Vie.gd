tool
extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var vie = 3 setget _set_vie

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _set_vie(Vie):
	text = "Vie: " + String(Vie)
	vie = Vie
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
