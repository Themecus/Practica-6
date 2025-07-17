extends Node2D



func _on_correr_pressed():
	get_tree().change_scene_to_file("res://Scene/escenario1.tscn")


func _on_salir_pressed():
	get_tree().quit()
