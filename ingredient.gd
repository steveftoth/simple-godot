class_name Ingredient

extends Node


var meat_attribute: float;
var vegetable_attribute: float;
var bread_attribute: float;
var cheese_attribute: float;

enum MeatType { HAM, CHICKEN, TURKEY }
enum VegType { PICKLE, LETTUCE, TOMATO }
enum CheeseType { AMERICAN, CHEDDAR, SWISS }

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
