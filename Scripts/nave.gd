extends Node2D
const PRE_TIRO = preload("res://tiro.tscn")

# posicao minima 26
# posicao maxima 373
var vel = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dirX = 0
	if Input.is_action_pressed("ui_left"):
		dirX += -2
	
	if Input.is_action_pressed("ui_right"):
		dirX += 2
		
	if(Input.is_action_just_pressed("ui_accept")):
		if(get_tree().get_nodes_in_group("tiros").size() <  3):
			var tiro = PRE_TIRO.instance()	
			get_parent().add_child(tiro)
			tiro.global_position = global_position + Vector2(0,-20)
		
	translate(Vector2(dirX,0) * vel * delta)
	
	global_position.x = clamp(global_position.x, 26, 373)

	
