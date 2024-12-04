extends Node2D

const WAIT_DURATION := 1.0
@onready var platform := $platform as AnimatableBody2D
@export var move_speed := 1.0
@export var distance := 192
@export var move_horizontal := true

var follow := Vector2.ZERO 
var platform_center := 16

# Called when the node enters the scene tree for the first time.
func _ready():
	# Chama a função para mover a plataforma
	move_plataform()


func _physics_process(delta: float) -> void:
	platform.position = platform.position.lerp(follow, 0.5)
	
# Função de movimentação da plataforma
func move_plataform():
	# Define a direção do movimento
	var move_direction = Vector2.RIGHT * distance if move_horizontal else Vector2.UP * distance
	# Calcula a duração do movimento
	var duration = move_direction.length() / float(move_speed * platform_center)
	
	# Cria um Tween para animar a plataforma
	var platform_tween = create_tween().set_loops().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
	platform_tween.tween_property(self, "follow" , move_direction, duration).set_delay(WAIT_DURATION)
	platform_tween.tween_property(self, "follow" , Vector2.ZERO, duration).set_delay(duration + WAIT_DURATION * 2)
	# Faz o Tween animar a propriedade "position" da plataforma
	#platform_tween.tween_property(platform, "position", platform.position + move_direction, duration)
	#platform_tween.tween_property(platform, "position", platform.position, duration)
	
