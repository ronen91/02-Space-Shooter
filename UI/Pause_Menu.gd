extends Control


func _ready():
	pass


func _on_Restart_pressed():
	Global.reset()
	get_tree().paused = false
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Continue_pressed():
	var Pause_Menu = get_node_or_null("/root/Game/UI/Pause_Menu")
	Pause_Menu.hide()
	get_tree().paused = false
