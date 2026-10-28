extends Sprite2D
const VELOCIDAD = 50
var HayMouse = false
var Agarrando = false

func _process(delta):
	var PosicionMouse = get_global_mouse_position()
	if HayMouse and Input.is_action_just_pressed("ClickIzq"):
		Agarrando = true
	if Input.is_action_just_released("ClickIzq"):
		Agarrando = false
	if Agarrando == true:
		global_position = global_position.lerp(PosicionMouse, VELOCIDAD*delta)

func _on_area_2d_mouse_entered():
	HayMouse = true
func on_area_2d_mouse_exited():
	HayMouse = false
