extends AnimatedSprite2D
var ValoresEtapas = [[525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 870, 30], [525, 800, 30], [525, 800, 30], [970, 536, 30], [970, 536, 30], [970, 536, 30], [970, 536, 30], [970, 536, 30], [970, 536, 30], [970, 536, 30]]
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
	ValoresObjetivo = ValoresEtapas[Etapa]
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
		10:
			play("Silicona")
		11:
			await get_tree().create_timer(2).timeout
			visible = false
