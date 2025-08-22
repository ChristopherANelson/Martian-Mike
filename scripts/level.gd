extends Node2D
@onready var start_position = $"Start Position"
@onready var player = $Player


func _on_deathzone_body_entered(body: Node2D) -> void:
	reset_player()



func _on_trap_touched_player() -> void:
	reset_player()

func reset_player():
	player.velocity = Vector2.ZERO
	player.global_position = start_position.global_position
