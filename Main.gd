extends Node2D
var Etapa = 0

func _ready() -> void:
	Audio.play_música_nivel()

func _on_button_pressed() -> void:
	Etapa += 1
	Victoria()
func Victoria():
	if Etapa == 20:
		$Button.disabled = true
		await get_tree().create_timer(5).timeout
		$Cartel.visible = true
		
