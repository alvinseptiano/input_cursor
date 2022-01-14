extends Node


func _ready() -> void:
	$VBoxContainer.grab_focus()
	$Timer.start(3)


func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$Timer.start()


func _on_Timer_timeout() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
