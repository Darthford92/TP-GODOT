extends Control

#Cambia a la escena inicial.
func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Escenas/main.tscn")
	pass 
