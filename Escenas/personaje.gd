extends CharacterBody2D

var direccion = Vector2()
var velocidad = 5

func _physics_process(_delta):
	_calculate_player_velocity()
	move_and_collide(velocity)
	disparar_animacion(direccion)
	pass

# Función para disparar animaciones según la dirección.
func disparar_animacion(dir):
	# Si el personaje está quieto o no tiene dirección no se dispara ninguna animación.
	if dir == Vector2.ZERO:
		$AnimationPlayer.stop()
		return
		pass

	var xDirection = ""
	var yDirection = ""
	var direction = ""

	if direccion.y < 0:
		yDirection = "Arriba"
	elif direccion.y > 0:
		yDirection = "Abajo"

	if direccion.x < 0:
		xDirection = "Izquierda"
	elif direccion.x > 0:
		xDirection = "Derecha"

# Si el personaje se mueve en diagonal prioriza la dirección en el eje y.
	if abs(direccion.y) >= abs(direccion.x):
		direction = yDirection
	else:
		direction = xDirection

	$AnimationPlayer.play(direction)
	pass

# Lee el vector del imput manager y lo usa para calcular la velocidad.
func _calculate_player_velocity():
	direccion = InputManager.get_player_direccion()
	velocity = direccion * velocidad
	pass
