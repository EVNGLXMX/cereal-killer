extends KinematicBody2D
class_name Actor

export var speed := 700.0

func _physics_process(delta: float) -> void:
	var input_vector := Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	var move_direction := input_vector.normalized()
	move_and_slide(speed * move_direction)
