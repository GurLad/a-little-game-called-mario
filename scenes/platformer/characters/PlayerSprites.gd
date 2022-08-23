extends Node2D
class_name PlayerSprites

var player: Player = null
var players: Dictionary
var _current: String = ""

var inventory = preload("res://scripts/resources/PlayerInventory.tres")

func init(player):
	self.player = player
	for _i in self.get_children():
		players[_i.name] = _i
	_set_player(inventory.character)
	EventBus.connect("player_changed", self, "_player_changed_handler")

func _set_player(name):
	if name != _current && name in players.keys():
		if _current != "":
			players[_current].hide()
		_current = name
		players[name].show()
		player.sprite = players[name]
		player.anim = players[name].get_node("Anims")
		player.effect_anim = players[name].get_node("EffectAnims")
		inventory.character = name
		
func _player_changed_handler(data):
	_set_player(data["name"])
