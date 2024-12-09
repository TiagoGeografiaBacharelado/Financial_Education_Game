extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().pasused = true

func _on_resume_btn_pressed():
	pass # Replace with function body.


func _on_resume_btn_2_pressed():
	get_tree().quit()
