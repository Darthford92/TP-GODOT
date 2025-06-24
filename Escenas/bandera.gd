extends Sprite2D

signal bandera_tocada(mensaje:String)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Personaje":
		emit_signal("bandera_tocada","Personaje")
	else:
		emit_signal("bandera_tocada","Enemigo")
	pass
pass
