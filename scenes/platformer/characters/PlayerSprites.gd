extends Node2D
class_name PlayerSprites

var player: Player = null
var players: Dictionary
var _current: String = ""

func init(player):
	self.player = player
	for _i in self.get_children():
		players[_i.name] = _i
	set_player("Mario")

func set_player(name):
	if name != _current && name in players.keys():
		if _current != "":
			players[_current].hide()
		players[name].show()
		player.sprite = players[name]
		player.anim = players[name].get_node("Anims")
		player.effect_anim = players[name].get_node("EffectAnims")
		
