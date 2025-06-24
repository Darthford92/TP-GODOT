extends Panel

@onready var label : Label = $Label

func _ready():
		self.visible = false

#Esta func sera llamada en la condicion de derrota o victoria, y mostrara cierto mensaje
func mostrar_cartel(texto: String):
	print("Cartel instanciado!")
	label.text = texto
	self.visible = true
