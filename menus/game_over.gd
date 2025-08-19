extends Control

const SAVE_PATH = "user://save.cfg"
const TEST_SAVE_PATH = "res://save.cfg"

@export var game_stats: GameStats

@onready var score_value: Label = %ScoreValue
@onready var highscore_value: Label = %HighscoreValue

var save_path = TEST_SAVE_PATH

func _ready() -> void:
	if game_stats.score > game_stats.highscore:
		game_stats.highscore = game_stats.score
	score_value.text = str(game_stats.score)
	highscore_value.text = str(game_stats.highscore)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		game_stats.score = 0
		get_tree().change_scene_to_file("res://menus/menu.tscn")

func load_highscore() -> void:
	var config = ConfigFile.new()
	var error = config.load(save_path)
	if error != OK: return
	game_stats.highscore = config.get_value("game", "highscore")
	
func save_highscore() -> void:
	pass
