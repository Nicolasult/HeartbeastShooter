extends Node2D

@onready var move_component: MoveComponent = $MoveComponent
@onready var stats_component: StatsComponent = $StatsComponent
@onready var visible_on_screen_notifier_2d: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D
@onready var scale_component: ScaleComponent = $ScaleComponent
@onready var flash_component: FlashComponent = $FlashComponent
@onready var shake_component: ShakeComponent = $ShakeComponent

func _ready() -> void:
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free)
