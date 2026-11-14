extends Sprite2D
var ValoresEtapas = [[1560, 870, 53], [1560, 870, 53], [1560, 870, 53], [1560, 870, 53], [1560, 870, 53], [986, 793, 0], [986, 793, 0], [986, 793, 0], [986, 793, 0], [986, 793, 0], [986, 793, 0],[986, 793, 0],[986, 793, 0],[986, 793, 0],[986, 793, 0],[986, 793, 0],[986, 793, 0], [986, 793, 0]]
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
	
func SetearPosicion():
	global_position.x = ValoresObjetivo.get(0)
	global_position.y = ValoresObjetivo.get(1)
	rotation_degrees = ValoresObjetivo.get(2)
	
func _on_button_pressed() -> void:
	Etapa += 1
	ActualizarValores()
