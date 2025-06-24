extends CharacterBody2D

signal pierde

var movimiento = Vector2()
var velocidad = 3

func _physics_process(_delta):
	var personaje = get_node_or_null("../Personaje")
	if personaje:
		set_vector(personaje.global_position - global_position)
		move_and_collide(movimiento)

func set_vector(vector):
	movimiento = vector.normalized() * velocidad

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Personaje":
		print("Enemigo: Toqué al personaje")
		emit_signal("pierde")
