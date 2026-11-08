extends Sprite2D
var ValoresEtapas = [[1536, 903, 0, 0], [0, 903, 0, 0], [1536, 903, 0, 0]]
var Etapa = 0
var t = 0
var ValoresActuales
func _ready():
	ActualizarValores()
func _process(delta: float) -> void:
	t += delta
	global_position.x += (ValoresActuales.get(0) - global_position.x) #* t
func ActualizarValores():
	ValoresActuales = ValoresEtapas[Etapa]
	
	global_position.y = ValoresActuales.get(1)
	
	rotation = ValoresActuales.get(2)
	#Highlight get3 0=no 1=si
	
func _on_button_pressed() -> void:
	Etapa += 1
	ActualizarValores()
