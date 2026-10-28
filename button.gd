extends Button
var ValoresBoton = {1:[200, 100], 2:[100, 200]}
var Etapa = 0
func _process(delta: float) -> void:
	pass
func _on_pressed() -> void:
	Etapa += 1
	ActualizarBoton()
	
func ActualizarBoton():
	var ValoresActuales = ValoresBoton[Etapa]
	position.x = ValoresActuales.get(0)
	position.y = ValoresActuales.get(1)
