class_name OffScreenQueueFree
extends VisibleOnScreenNotifier2D

func _ready() -> void:
	screen_exited.connect(get_parent().queue_free)
