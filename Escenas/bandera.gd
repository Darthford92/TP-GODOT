extends Sprite2D

# Emite la señal de que la bandera fue tocada, tanto por el personaje como por el enemigo
signal bandera_tocada(mensaje:String)

#Función que diferencia quién toca la bandera
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Personaje":
		emit_signal("bandera_tocada","Personaje")
	else:
		emit_signal("bandera_tocada","Enemigo")
	pass
pass
