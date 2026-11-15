extends AnimatedSprite2D
var ValoresEtapas = [[387, 1068, 0], [942, 1000, 0], [942, 1000, 0], [942, 868, 0], [387, 1068, 0], [387, 1068, 0], [387, 1050, 0], [995, 706, 0], [995, 706, 0]]
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
	if Etapa < 8:
		ValoresObjetivo = ValoresEtapas[Etapa]
	else:
		ValoresObjetivo = ValoresEtapas[8]
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
		4:
			play("Silicona")
		7:
			await get_tree().create_timer(3.5).timeout
			play("Puesta 1")
		11:
			await get_tree().create_timer(3).timeout
			play("Puesta 2")
		15:
			await get_tree().create_timer(3).timeout
			play("Puesta 3")
		18:
			play("Pegada Rama")
		20:
			await get_tree().create_timer(2).timeout
			play("Terminada")
