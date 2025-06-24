extends Node2D

# Emite señales para el main
signal volver_a_jugar
signal salir

# Al apretar el botón "Volver a jugar" emite la señal dispuesta más arriba en éste código.
func _on_volver_a_jugar_pressed():
	print("Botón Volver a jugar presionado")
	emit_signal("volver_a_jugar")

# Al apretar el botón "Salir" emite la señal dispuesta más arriba en éste código.
func _on_menu_final_salir_pressed():
	print("Botón Salir presionado")
	emit_signal("salir")
