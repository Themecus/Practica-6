extends Node
# Guarda la última posición al cambiar de escena
var acumular=0
var estado1=false
var estado2=false
var estado3=false
var estado4=false

func contador():
	acumular+=1
	print("van: "+str(acumular))
	if acumular==4:
		ganar()
	

func ganar():
	get_tree().change_scene_to_file("res://Scene/final.tscn")

