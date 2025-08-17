class_name PinkEnemy
extends Enemy

@onready var states: Node = $States

@onready var move_down_state: TimedStateComponent = %MoveDownState
@onready var move_side_state: TimedStateComponent = %MoveSideState
@onready var pause_state: TimedStateComponent = %PauseState
@onready var move_side_component: MoveComponent = $States/MoveSideState/MoveSideComponent


func _ready() -> void:
	super()
	
	for state in states.get_children():
		state.dispable()
	
	move_side_component.velocity.x = [-20, 20].pick_random()
