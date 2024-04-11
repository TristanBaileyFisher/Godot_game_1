extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.











func _on_next_mouse_entered():
	$next/nextline.visible = true
func _on_next_mouse_exited():
	$next/nextline.visible = false
func _on_next_pressed():
	get_tree().change_scene("res://Help2.tscn")
	
	


func _on_Menu_mouse_entered():
	$Menu/Menuline.visible = true
func _on_Menu_mouse_exited():
	$Menu/Menuline.visible = false
func _on_Menu_pressed():
	get_tree().change_scene("res://Menu.tscn")
