extends Node2D
class_name PlayableCharacter

export(String) var character_name: String
var moustache_pos: float
onready var sprite := $PowerUp/AnimatedSprite
onready var timer := $Timer

func _on_PlayableCharacter_body_entered(body):
	EventBus.emit_signal("player_changed", character_name)
	timer.start()
	hide()

func _on_Timer_timeout():
	show()
