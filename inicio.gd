extends Node2D


func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://Nivel1.tscn")
