extends Powerup
class_name PlayableCharacter

var moustache_pos: float
onready var sprite := $AnimatedSprite

func _on_PlayableCharacter_body_entered(body):
	call_deferred("collect", "player_changed")
	if body is Player:
		print("AAAA")
		body.sprite.frames = sprite.frames
