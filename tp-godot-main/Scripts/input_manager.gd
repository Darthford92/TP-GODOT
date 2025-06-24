extends Node
class_name InputManager

static func get_player_direccion():
  return Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
