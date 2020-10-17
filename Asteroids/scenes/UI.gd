extends Control

onready var scoreNode = get_node("Score")
onready var vieNode = get_node("Vie")

func reduire_vie():
	vieNode.vie -= 1
	if vieNode.vie == 0:
		get_tree().change_scene("res://scenes/Menu.tscn")
	pass

func augmente_score(points):
	scoreNode.score += points
	pass