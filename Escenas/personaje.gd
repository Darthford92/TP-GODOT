extends CharacterBody2D

var direccion = Vector2()
var velocidad = 5

func _physics_process(delta: float) -> void:
	direccion = InputManager.get_player_direccion()
	velocity = direccion * velocidad
	move_and_collide(velocity)
	disparar_animacion(direccion)

func disparar_animacion(direccion: Vector2):
	if direccion == Vector2.ZERO:
		$AnimationPlayer.stop()
		return
	
	var xDirection = ""
	var yDirection = ""
	var direction: String = ""
	
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
