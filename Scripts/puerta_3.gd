extends Area2D



func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print("Algo entro")
	get_tree().change_scene_to_file("res://Scene/escenario3.tscn")
