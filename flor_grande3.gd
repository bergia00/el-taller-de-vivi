extends AnimatedSprite2D
var ValoresEtapas = [[407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60], [407, 982, 60],  [407, 902, 60], [407, 902, 60], [1016, 1053, 60], [960, 533, 60], [960, 533, 60]]
var Etapa = 0
const VELOCIDAD = 2
var ValoresObjetivo

func _ready():
	ActualizarValores()
	SetearPosicion()
	
func _process(delta: float) -> void:
	global_position.x += (ValoresObjetivo.get(0) - global_position.x) * VELOCIDAD * delta
	global_position.y += (ValoresObjetivo.get(1) - global_position.y) * VELOCIDAD * delta
	rotation_degrees += (ValoresObjetivo.get(2) - rotation_degrees) * VELOCIDAD * delta
	
func ActualizarValores():
	if Etapa < 18:
		ValoresObjetivo = ValoresEtapas[Etapa]
	else:
		ValoresObjetivo = ValoresEtapas[18]
	CambiarSprite()
func SetearPosicion():
	global_position.x = ValoresObjetivo.get(0)
	global_position.y = ValoresObjetivo.get(1)
	rotation_degrees = ValoresObjetivo.get(2)
	
func _on_button_pressed() -> void:
	Etapa += 1
	ActualizarValores()

func CambiarSprite():
	match Etapa:
		16:
			play("Silicona")
		18:
			await get_tree().create_timer(1).timeout
			queue_free()
