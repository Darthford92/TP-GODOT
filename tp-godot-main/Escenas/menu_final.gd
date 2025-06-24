extends Node2D

signal volver_a_jugar
signal salir

func _on_volver_a_jugar_pressed():
	print("Botón Volver a jugar presionado")
	emit_signal("volver_a_jugar")

func _on_menu_final_salir_pressed():
	print("Botón Salir presionado")
	emit_signal("salir")
