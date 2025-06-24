extends Node2D

func _ready():
	get_tree().paused = true
	$Enemigo.pierde.connect(_on_enemigo_pierde)
pass

func _on_bandera_gana() -> void:
	$Enemigo.queue_free()
	$Bandera.queue_free()
pass

func _on_bandera_pierde() -> void:
	$Personaje.queue_free()
	pass

func _on_enemigo_pierde():
	print("Señal de pérdida recibida")
	get_tree().paused = true
	$MenuFin.visible = true

func _on_menu_jugar() -> void:
	get_tree().paused = false
	$Menu.visible = false
	pass

func _on_menu_jugar_de_nuevo():
	get_tree().reload_current_scene()
	pass

func _on_menu_salir():
	get_tree().quit()
	pass
