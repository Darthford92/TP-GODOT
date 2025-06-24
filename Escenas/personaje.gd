extends CharacterBody2D

var direccion = Vector2()
var velocidad = 5

func _physics_process(_delta):
	_calculate_player_velocity()
	move_and_collide(velocity)
	disparar_animacion(direccion)

func disparar_animacion(dir):
	if dir == Vector2.ZERO:
		$AnimationPlayer.stop()
		return

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

	if abs(direccion.y) >= abs(direccion.x):
		direction = yDirection
	else:
		direction = xDirection

	$AnimationPlayer.play(direction)

func _calculate_player_velocity():
	direccion = InputManager.get_player_direccion()
	velocity = direccion * velocidad
	pass
