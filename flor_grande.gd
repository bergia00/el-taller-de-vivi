extends AnimatedSprite2D
var ValoresEtapas = [[387, 868, 0], [942, 804, 0], [942, 804, 0], [942, 698, 0], [387, 868, 0], [387, 868, 0], [387, 850, 0], [995, 706, 0], [995, 706, 0], [995, 706, 0], [995, 706, 0], [995, 706, 0],[995, 706, 0],[995, 706, 0],[995, 706, 0],[995, 706, 0],[995, 706, 0],[995, 706, 0],[995, 706, 0]]
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
		4:
			play("Silicona")
		7:
			await get_tree().create_timer(2).timeout
			play("Puesta 1")
		11:
			await get_tree().create_timer(2).timeout
			play("Puesta 2")
		15:
			await get_tree().create_timer(2).timeout
			play("Puesta 3")
		
