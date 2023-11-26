extends CharacterBody2D

@export var speed = 400
var screen_size

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
const JUMP_VELOCITY = -400

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction = Input.get_axis("ui_left","ui_right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0 , speed)
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		
	if velocity.x != 0:
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0

	move_and_slide()


#	var velocity = Vector2.ZERO
#	if Input.is_action_pressed("move_right"):
#		velocity.x +=1
#	if Input.is_action_pressed("move_left"):
#		velocity.x -=1
#	if Input.is_action_pressed("move_up"):
#		velocity.y -=1
#	if Input.is_action_pressed("move_down"):
#		velocity.y +=1
#		
#	if velocity.length() > 0:
#		velocity = velocity.normalized() * speed
#		$AnimatedSprite2D.play()
#	else:
#		$AnimatedSprite2D.stop()
#	position += velocity * delta
#	position = position.clamp(Vector2.ZERO, screen_size)
	
#	if velocity.x != 0:
#		$AnimatedSprite2D.animation = "walk"
#		$AnimatedSprite2D.flip_v = false
#		$AnimatedSprite2D.flip_h = velocity.x < 0
	
