class_name State

extends Node2D

func enter()->void:
	pass

func exit()->void:
	pass
	
# the return value of each fonctions will be used by the StateMachine class to update the current state
func process_frame(delta:float) -> State:
	return null
	
func process_input(event:InputEvent) -> State:
	return null
	
func process_physics(delta:float) -> State:
	return null



