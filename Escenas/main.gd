extends Node2D

func _ready():
	print("Main cargado")
	get_tree().paused = true
	$Menu.visible = true
	$MenuFinal.visible = false
	pass

# Cuando el enemigo nos toca se printea Señal de pérdida recibida en consola y se pasa al menu final poniendo el juego en pausa
func _on_enemigo_pierde():
	print("Señal de pérdida recibida")
	get_tree().paused = true
	$MenuFinal.visible = true
	pass

# Cuando el juego inicia printea Iniciar juego en consola y se pasa al menu final poniendo el juego en pausa
func _on_menu_jugar():
	print("Iniciar juego")
	get_tree().paused = false
	$Menu.visible = false
	pass

# 
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

func _on_bandera_bandera_tocada(ganador: String) -> void:
	print("Ganó: ", ganador)
	get_tree().paused = true
	$MenuFinal.visible = true
	$Personaje.queue_free()
	$Enemigo.queue_free()
	$Bandera.queue_free()
	pass
