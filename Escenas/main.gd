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

# Cuando se apreta el boton Volver a jugar carga la escena del menú inicial.
func _on_menu_volver_a_jugar():
	print("Volver a jugar presionado")
	get_tree().reload_current_scene()
	pass

# Cuando se toca el botón de salir del menú inicial cierra el juego o el debugger.
func _on_menu_salir():
	print("Salir del juego")
	get_tree().quit()
	pass

# Cuando se toca el botón de salir del menú final cierra el juego o el debugger.
func _on_menu_final_salir() -> void:
	print("Salir del juego")
	get_tree().quit()
	pass

# Cuando la bandera es tocada tanto por el personaje como por el enemigo se printea en consola "Ganó: "
# y dependiendo de la señal recibida el nombre de quién ganó.
# También desaparece el personaje, la bandera y el enemigo, pausa el juego y muestra el menú final. 
func _on_bandera_bandera_tocada(ganador: String) -> void:
	print("Ganó: ", ganador)
	get_tree().paused = true
	$MenuFinal.visible = true
	$Personaje.queue_free()
	$Enemigo.queue_free()
	$Bandera.queue_free()
	pass
