extends Node2D

# Emite señales para el main
signal jugar
signal salir

# Al apretar el botón "Jugar" emite la señal dispuesta más arriba en éste código.
func _on_jugar_pressed():
	print("Botón Jugar presionado")
	emit_signal("jugar")

# Al apretar el botón "Salir" emite la señal dispuesta más arriba en éste código.
func _on_salir_pressed():
	print("Botón Salir presionado")
	emit_signal("salir")
