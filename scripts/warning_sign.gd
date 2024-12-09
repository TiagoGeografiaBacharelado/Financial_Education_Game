extends Node2D
@onready var textura: Sprite2D = $textura
@onready var area_sign: Area2D = $area_sign

const lines : Array[String] = [
	"Ola, jogador!",
	"tudo bem?",
	"vc esta preste a começar sua jornada... "
]

func _unhandled_input(event):
	if area_sign.get_overlapping_bodies().size() > 0:
		textura.show()
		if event.is_action_pressed("interao") && DialogManager.is_message_active:
			textura.hide()
			DialogManager.start_message(global_position, lines)
	else:
		textura.hide()
		if DialogManager.dialog_box != null:
			DialogManager.dialog_box.queue_free()
			DialogManager.is_message_active = false
			
			
		
