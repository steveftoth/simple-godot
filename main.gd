extends Node2D

@onready var globals = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("JumpsLabel").text = str(globals.jumps)

func exitButton():
	get_tree().quit()

func startGame():
	get_tree().change_scene_to_file("res://game.tscn"  )

func startSandwich():
	get_tree().change_scene_to_file("res://sandwich.tscn")
