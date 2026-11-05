extends Button
var ValoresBoton = [[200, 100, 50, 50, 0, 0], [100, 200, 300, 140, 0, 10]]
var Etapa = 0

func _ready():
	ActualizarBoton()
	
func _on_pressed() -> void:
	Etapa += 1
	ActualizarBoton()
	
func ActualizarBoton():
	var ValoresActuales = ValoresBoton[Etapa]
	position.x = ValoresActuales.get(0)
	position.y = ValoresActuales.get(1)
	size.x = ValoresActuales.get(2)
	size.y = ValoresActuales.get(3)
	#rotacion get4
	#pasar automaticamente get5: si es mayor a 0 timer con ese tiempo y pasar cuando termina, funcion separada?
