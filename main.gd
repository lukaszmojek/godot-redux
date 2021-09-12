extends Node

# This is an example of a main.gd script (i.e. one attached to the root node of any scene).

onready var actions = get_node('Actions')
onready var reducers = get_node('Reducers')
onready var store = get_node('Store')

func _ready():
	store.create([
		{'name': 'game', 'instance': reducers},
		{'name': 'player', 'instance': reducers}
	], [
		{'name': '_on_store_changed', 'instance': self}
	])
	
	store.dispatch(actions.game_set_start_time(OS.get_unix_time()))
	store.dispatch(actions.player_set_health(100))

func _on_store_changed(name, state):
	print(store.get_state())

