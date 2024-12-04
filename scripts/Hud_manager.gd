extends Control

@onready var contador_moedas: Label = $HUD/Control/container/Coins_container/contador_moedas as Label
@onready var time_counter: Label = $HUD/Control/container/time_container3/Time_counter as Label
@onready var score_counter: Label = $HUD/Control/container/Score_container2/score_counter as Label
@onready var life_couter: Label = $HUD/Control/container/life_container/life_couter as Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contador_moedas.text = str("%04d" % Golbal.coins)
	score_counter.text = str("%06d" % Golbal.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
