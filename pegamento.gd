extends Sprite2D
var ValoresEtapas = [[113, 811, 0, 0], [113, 811, 0, 1],]
var Etapa = 0

func _ready():
	Actualizar()
	
func Actualizar():
	var ValoresActuales = ValoresEtapas[Etapa]
	global_position.x = ValoresActuales.get(0) #lerp a las transformaciones
	global_position.y = ValoresActuales.get(1)
	rotation = ValoresActuales.get(2)
	#Highlight get3 0=no 1=si
	
func _on_button_pressed() -> void:
	Etapa += 1
	Actualizar()
