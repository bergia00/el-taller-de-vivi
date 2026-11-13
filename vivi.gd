extends Sprite2D
var Dialogos = {0: "¡Bienvenido a mi clase! Para empezar, agarrá la primera tela cortada en forma de flor que se encuentra a tu izquierda.", 1:"Ahora, seleccioná la silicona líquida. Lo bueno de este tipo de silicona es que es fácil de manipular y no hay riesgo de quemadura.", 2: "Vamos a colocar silicona rodeando el centro de la flor (a 1cm), donde hay un pequeño agujero cortado. Tocá la tela para ponerle silicona.", 3: "Vacio", 4: "¡Muy bien! El paso siguiente es agarrar la rama más gruesa que se encuentra a tu derecha.", 5: "Volvé a seleccionar el pedazo de tela al que le pusiste silicona hace un poquito.", 6:"La tela se introduce desde abajo de la rama hacia arriba por el centro cortado. Tocá la rama para ubicar la tela.", 7:"Gracias a la silicona pudimos pegar bien la tela y darle forma de flor pinchándola con los dedos. Ahora, seleccioná una vez más la silicona.", 8:"Elegí el siguiente pedazo de tela y volvé a rodear el centro con la silicona.", 9:"Vacio", 10:"Una vez más hay que colocar la tela en la rama para darle más forma. Tocá la rama para pegar la tela.", 11:"¡Genial! Ya vamos por la última capa de la flor. Volvé a agarrar la silicona.", 12:"Hacemos un círculo de silicona en el centro de la flor.", 13:"Vacio", 14:"Y ubicamos la tela rodeando a las otras. Tocá la rama para colocar y darle forma a los últimos pétalos.", 15:"Etapa15", 16:"Etapa 16", 17:"¡Wow! Que hermosa que te quedó."}
var Etapa = 0

func _ready():
	Actualizar()
	
func Actualizar():
	if Dialogos.get(Etapa) == "Vacio":
		$Label.visible = false
		$"../Bubble".visible = false
	else:
		$Label.visible = true
		$Label.text = Dialogos.get(Etapa)
		$"../Bubble".visible = true
	
func _on_button_pressed() -> void:
	Etapa += 1
	Actualizar()
