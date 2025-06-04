class_name PlayerIdleState
extends PlayerState

func enter()->void:
	player.animation.play(IDLE)
# Called when the node enters the scene tree for the first time.
