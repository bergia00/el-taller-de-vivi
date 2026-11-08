extends Button
var ValoresBoton = [[387, 868, 212, 212, 0, 0, 0], [113, 811, 115, 329, 0, 0, 0]]
var Etapa = 0
var BotonVisible = false
var ValoresActuales
func _ready():
	ActualizarBoton()
	modulate.a = 5
	
func _process(_delta: float) -> void:
	AlternarVisibilidadBoton()
	
func _on_pressed() -> void:
	Etapa += 1
	ActualizarBoton()
	disabled = true
	
func ActualizarBoton():
	ValoresActuales = ValoresBoton[Etapa]
	position.x = ValoresActuales.get(0) - (ValoresActuales.get(2)/2)
	position.y = ValoresActuales.get(1) - (ValoresActuales.get(3)/2)
	size.x = ValoresActuales.get(2)
	size.y = ValoresActuales.get(3)
	rotation_degrees = ValoresActuales.get(4)
	PasarEtapa()
	HabilitarBoton()

func AlternarVisibilidadBoton():
	if Input.is_action_just_pressed("MostrarBoton") and BotonVisible == false:
		modulate.a = 5
		BotonVisible = true
	elif Input.is_action_just_pressed("MostrarBoton") and BotonVisible == true:
		modulate.a = 0
		BotonVisible = false

func PasarEtapa():
	if ValoresActuales.get(5) > 0:
		await get_tree().create_timer(ValoresActuales.get(5)).timeout
		emit_signal("pressed")
		
func HabilitarBoton():
	if ValoresActuales.get(5) == 0: #and ValoresActuales.get(6) > 0 impacto en rendimiento por crear timer?
		await get_tree().create_timer(ValoresActuales.get(6)).timeout
		disabled = false
