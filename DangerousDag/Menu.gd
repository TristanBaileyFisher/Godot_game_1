extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass







#play button functions
func _on_play_pressed():
	get_tree().change_scene("res://Level1.tscn")
func _on_play_mouse_entered():
	$play/playline.visible = true
func _on_play_mouse_exited():
	$play/playline.visible = false

#help button functions
func _on_help_pressed():
	get_tree().change_scene("res://Help.tscn")
func _on_help_mouse_entered():
	$help/helpline.visible = true
func _on_help_mouse_exited():
	$help/helpline.visible = false

#about button functions


func _on_about_pressed():
	get_tree().change_scene("res://About.tscn")
func _on_about_mouse_entered():
	$about/aboutline.visible = true
func _on_about_mouse_exited():
	$about/aboutline.visible = false


#quit button functions


func _on_quit_pressed():
	get_tree().change_scene("res://Quit.tscn") # Replace with function body.
func _on_quit_mouse_entered():
	$quit/quitline.visible = true
func _on_quit_mouse_exited():
	$quit/quitline.visible = false
