extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	var breadScene = load("res://sand_play.tscn")
	var startx = 100
	var starty = 100
	for y in range(1,10):
		var bread = breadScene.instantiate()
		bread.position=Vector2(startx,starty+ 32*y)
		add_child(bread)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func exitPressed():
	get_tree().change_scene_to_file("res://main.tscn")
	
func optionsPressed():
	pass
	
