extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Game = get_node("..")
onready var xOriginal =	self.global_position.x

var movimentaAlien = 2
# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Game.tempo%2 == 0):
		global_position.x = xOriginal + 8

	else:
		global_position.x = xOriginal - 3

	#translate(Vector2(0,50) * delta)
	#print(movimentaAlien)
	if(Game.tempo == movimentaAlien):
		global_position.y +=  5
		movimentaAlien +=  3
	#give the biggest value to the movimentaAlien variable

	


func _on_area_area_entered(area):
	queue_free()
