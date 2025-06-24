extends Node2D

func _ready():
	print("Main cargado")
	get_tree().paused = true
	$Menu.visible = true
	$MenuFinal.visible = false
	pass

func _on_enemigo_pierde():
	print("Señal de pérdida recibida")
	get_tree().paused = true
	$MenuFinal.visible = true
	pass

func _on_menu_jugar():
	print("Iniciar juego")
	get_tree().paused = false
	$Menu.visible = false
	pass

func _on_menu_volver_a_jugar():
	print("Volver a jugar presionado")
	get_tree().reload_current_scene()
	pass

func _on_menu_salir():
	print("Salir del juego")
	get_tree().quit()
	pass


func _on_menu_final_salir() -> void:
	print("Salir del juego")
	get_tree().quit()
	pass

func _on_bandera_gana() -> void:
	print("¡Ganaste!")
	get_tree().paused = true
	$MenuFinal.visible = true
	$Personaje.queue_free()
	$Enemigo.queue_free()
	$Bandera.queue_free()

func _on_bandera_pierde() -> void:
	print("¡Perdiste!")
	get_tree().paused = true
	$MenuFinal.visible = true
	$Personaje.queue_free()
	$Enemigo.queue_free()
	$Bandera.queue_free()
