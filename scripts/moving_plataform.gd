extends Node2D

const WATT_DURATION := 1.0
@onready var plataform := $plataform as AnimatableBody2D
@export var move_speed := 1.0
@export var distance := 192
@export var move_horizontal := true


var follow := Vector2.ZERO 
var platform_center := 16
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func move_plataform():
	var move_direction = Vector2.RIGHT * distance if move_horizontal else Vector2.UP *  distance
