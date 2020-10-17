extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bleu = preload("res://assets/PlayerBlue_Frame_01_png_processed.png")
var rouge = preload("res://assets/PlayerRed_Frame_01_png_processed.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Menu_pressed():
	get_tree().change_scene("res://scenes/Menu.tscn")


func _on_Bleu_pressed():
	pass

