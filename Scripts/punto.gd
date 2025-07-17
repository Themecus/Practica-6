extends Area2D

var nombre
@onready var nodoPunto1=get_node("/root/Escenario/Zona de puntos/Punto1")
@onready var nodoPunto2=get_node("/root/Escenario/Zona de puntos/Punto2")
@onready var nodoPunto3=get_node("/root/Escenario/Zona de puntos/Punto3")
@onready var nodoPunto4=get_node("/root/Escenario/Zona de puntos/Punto4")


func _ready():
	if Global.estado1 and has_node("/root/Escenario/Zona de puntos/Punto1"):# esta cosa de has
		#verifica si existe el nodo en la escena actual
		nodoPunto1.queue_free()
	elif Global.estado2 and has_node("/root/Escenario/Zona de puntos/Punto2"):
		nodoPunto2.queue_free()
	elif Global.estado3 and has_node("/root/Escenario/Zona de puntos/Punto3"):
		nodoPunto3.queue_free()
	elif Global.estado4 and has_node("/root/Escenario/Zona de puntos/Punto4"):
		nodoPunto4.queue_free()

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	nombre=get_path()
	print("Se llego ", nombre)
	
	if str(nombre)=="/root/Escenario/Zona de puntos/Punto1":
		Global.estado1=true
	elif str(nombre)=="/root/Escenario/Zona de puntos/Punto2":
		Global.estado2=true
	elif str(nombre)=="/root/Escenario/Zona de puntos/Punto3":
		Global.estado3=true
	elif str(nombre)=="/root/Escenario/Zona de puntos/Punto4":
		Global.estado4=true
	
	Global.contador()
	queue_free()
	
