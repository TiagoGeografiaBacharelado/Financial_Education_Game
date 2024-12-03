extends Node2D

@onready var texture = $texture
@onready var area_sign = $area_sign

const lines : Array[String] = [
	"Olá, jogador!",
	"Aqui começa o seu desafio",
	"chegue até o final",
	"Sem ficar sem dinheiro",
	"Sua primeira lição começa",
	"AGORA!",
]


func _unhandled_input(event):
	if area_sign.get_overlapping_bodies().size() > 0:
		texture.show()
		if event.is_action_pressed("interact") && !DialogManager.is_message_active:
			texture.hide()
			DialogManager.start_message(global_position, lines)
		else:
			texture.hide()
			if DialogManager.dialog_box != null:
				DialogManager.dialog_box.queue_free()
				DialogManager.is_message_active = false
	
