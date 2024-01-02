class_name Bread 
extends Button

var highlighted

# Called when the node enters the scene tree for the first time.
func _ready():
	highlighted = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if highlighted: 
		scale=Vector2(1.5,1.5)
	else:
		scale=Vector2(1,1)

func mouse_entered():
#	scale=Vector2(1.5,1.5)
	highlighted = true
  	
func mouse_exited():
#	scale=Vector2(1,1)
	highlighted=false	
	
#func intersect(other_position):
#	return get_node("CollisionShape2D")
		
#func _input(event): 
#	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed() and intersect(event.position):
#		highlighted = !highlighted
#		get_viewport().set_input_as_handled()


