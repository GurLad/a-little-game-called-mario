extends Powerup
class_name PlayableCharacter

export var character_name: String
var moustache_pos: float
onready var sprite := $AnimatedSprite

func _on_PlayableCharacter_body_entered(body):
	call_deferred("collect", "player_changed", {"name": character_name})
