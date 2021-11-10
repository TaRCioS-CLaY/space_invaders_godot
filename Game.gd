extends Node2D

const PRE_ALIEN = preload("res://Alien R.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var timer = get_node("Timer")
var tempo = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(1)
	timer.start()
#	var alien = PRE_ALIEN.instance()
#	self.add_child(alien)
#	alien.global_position = global_position + Vector2(0,20)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func TimerTimeout():
	tempo += 1
	#print(tempo)
	pass # Replace with function body.
