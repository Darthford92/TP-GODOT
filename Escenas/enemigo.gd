extends CharacterBody2D

signal pierde

var direccion = Vector2()
var velocidad = 3
var personaje :Node


func _ready():
	personaje = get_node_or_null("../Personaje")

# Provoca que el enemigo se mueva en dirección al personaje
func _physics_process(_delta):
	if personaje:
		set_vector(personaje.global_position - global_position)
		move_and_collide(direccion)

#Normaliza la dirección
func set_vector(vector):
	direccion = vector.normalized() * velocidad

# Si el enemigo toca a nuestro personaje se emite "Enemigo: Toqué al personaje" en la consola
# y se emite también la señal "pierde".
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Personaje":
		print("Enemigo: Toqué al personaje")
		emit_signal("pierde")
