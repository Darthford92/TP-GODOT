extends Node2D

signal jugar
signal salir

func _on_jugar_pressed():
	print("Botón Jugar presionado")
	emit_signal("jugar")

func _on_salir_pressed():
	print("Botón Salir presionado")
	emit_signal("salir")
