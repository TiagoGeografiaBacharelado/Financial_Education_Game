extends Control

@onready var coins_counter: Label = $container/Coins_container/coins_counter
@onready var time_counter: Label = $container/time_container3/Time_counter
@onready var score_counter: Label = $container/Score_container2/score_counter
@onready var life_couter: Label = $container/life_container/life_couter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coins_counter.text = str("%04d" % Golbal.coins)
	score_counter.text = str("%06d" % Golbal.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	coins_counter.text = str("%04d" % Golbal.coins)
