extends AnimatedSprite
class_name PlayableCharacter

var moustache_pos: float

func _on_Hitbox_body_entered(body):
	if body is Player:
		print("AAAA")
		body.sprite.animation = animation
