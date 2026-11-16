extends Node2D

func _ready() -> void:
	Audio.play_música_general()

func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Nivel1.tscn")


func _on_instrucciones_pressed() -> void:
	get_tree().change_scene_to_file("res://instrucciones.tscn")
