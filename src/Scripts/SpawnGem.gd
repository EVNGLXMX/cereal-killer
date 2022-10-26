extends Node

func _input(ev):
	if Input.get_action_strength("misc_action"):
		spawn()

func spawn():
	var playerPosition = get_node("Player").get_position()
	var scene = load("res://src/Misc/Gem.tscn")
	var gem = scene.instance()
	gem.position = playerPosition
	add_child(gem)
