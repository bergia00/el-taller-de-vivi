extends Sprite2D
var Etapa = 0
const VELOCIDAD = 2
var ValoresObjetivo

func _ready():
	ActualizarValores()
	SetearPosicion()
	
func _process(delta: float) -> void:
	global_position.x += (ValoresObjetivo.get(0) - global_position.x) * VELOCIDAD * delta
	global_position.y += (ValoresObjetivo.get(1) - global_position.y) * VELOCIDAD * delta
	z_index = ValoresObjetivo.get(2)
	
func ActualizarValores():
	if Etapa > 22:
		ValoresObjetivo = [988, 636, 4]
	else:
		ValoresObjetivo = [1511, 771, 2]
	if Etapa == 23:
		await get_tree().create_timer(2).timeout
		visible = false
func SetearPosicion():
	global_position.x = ValoresObjetivo.get(0)
	global_position.y = ValoresObjetivo.get(1)
	z_index = ValoresObjetivo.get(2)
	
func _on_button_pressed() -> void:
	Etapa += 1
	ActualizarValores()
