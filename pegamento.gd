extends Sprite2D
var ValoresEtapas = [[200, 100, 0, 0], [100, 200, 90, 0]]
var Etapa = 0

func _ready():
	Actualizar()
	
func Actualizar():
	var ValoresActuales = ValoresEtapas[Etapa]
	global_position.x = ValoresActuales.get(0) #lerp a las transformaciones
	global_position.y = ValoresActuales.get(1)
	rotation = ValoresActuales.get(2)
	#Highlight
func _on_button_pressed() -> void:
	Etapa += 1
	Actualizar()
