extends Node

var MúsicaGral =load("res://Musica_Taller_Vivi1.mp3")
var MúsicaNivel=load("res://Musica_Taller_Vivi2.mp3")

func play_música_general():
	$"Música".stream = MúsicaGral
	$"Música".play()

func play_música_nivel():
	$"Música".stream = MúsicaNivel
	$"Música".play()
