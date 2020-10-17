extends KinematicBody2D

var vitesse =200
var velocite = Vector2()
export (PackedScene) var balle
onready var canon = $Canon
onready var ui = get_tree().current_scene.get_node("UI")


func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	get_input()
	var dir = get_global_mouse_position() - global_position
	var collisions = move_and_collide(velocite * delta) 
	if dir.length() > 5:
		rotation = dir.angle()
		velocite = move_and_slide(velocite)
	if collisions:
		ui.reduire_vie()


func get_input():
	var avance = Input.is_action_pressed("ui_up")
	var shoot = Input.is_action_just_pressed("ui_accept")
	
	if avance:
		velocite = Vector2(vitesse, 0).rotated(rotation)
		$AnimatedSprite.play("boost")
		$AnimatedSprite2.play("boost")
	if !avance:
		$AnimatedSprite.play("default")
		$AnimatedSprite2.play("default")
	if shoot:
		var b = balle.instance()
		b.creer(canon.global_position, rotation)
		get_parent().add_child(b)


