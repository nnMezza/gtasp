extends Area2D

var entered = -1

func _on_body_entered(body):
	entered += 1


func _on_body_exited(body):
	entered -= 1

func _process(_delta):
	if entered == 1:
		if Input.is_action_just_pressed("ui_up"):
			get_tree().change_scene_to_file("res://scenes/room2.tscn")
