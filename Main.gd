extends Node2D
var Etapa = 0

func _on_button_pressed() -> void:
	Etapa += 1
	Victoria()
func Victoria():
	if Etapa == 17:
		$Button.disabled= true
		await get_tree().create_timer(3).timeout
		$Victoria.visible = true
		await get_tree().create_timer(7).timeout
		get_tree().change_scene_to_file("res://Inicio.tscn")
