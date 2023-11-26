extends AnimatedSprite2D

var initial_position

# how large the motion up and down will be in pixels
var amplitide = 30 

var random=RandomNumberGenerator.new()
var x = random.randi_range(0,10)

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = self.position
	self.play("Attack")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	x += delta
	self.position.y = initial_position.y + sin(x) * amplitide
