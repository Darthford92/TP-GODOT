extends Node2D

signal jugar
signal salir

func _on_jugar_pressed():
	emit_signal("jugar")
	pass

func _on_salir_pressed():
	emit_signal("salir")
	pass

func _on_volver_a_jugar_pressed() -> void:
	emit_signal("jugar_de_nuevo")
	pass
