extends Sprite2D
var Dialogos = {0: "etapa 0", 1:"etapa 1", 2: "etapa 2", 3: "Vacio", 4: "Etapa 4", 5: "Etapa 5", 6:"Etapa 6", 7:"Etapa 7", 8:"Etapa 8", 9:"Etapa 9", 10:"Etapa 10", 11:"Etapa 11", 12:"Etapa 12", 13:"Etapa 13", 14:"Etapa 14", 15:"Etapa 15", 16:"Etapa 16", 17:"Etapa 17"}
var Etapa = 0

func _ready():
	Actualizar()
	
func Actualizar():
	if Dialogos.get(Etapa) == "Vacio":
		$Label.visible = false
	else:
		$Label.visible = true
		$Label.text = Dialogos.get(Etapa)
	
func _on_button_pressed() -> void:
	Etapa += 1
	Actualizar()
