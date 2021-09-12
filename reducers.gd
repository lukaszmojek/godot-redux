extends Node

func game(state, action):
	var types = get_node('/root/ActionTypes')
	var store = get_node('/root/Store')
	
	match action['type']:
		types.GAME.SET_START_TIME:
			var next_state = store.shallow_copy(state)
			next_state['start_time'] = action['time']
			return next_state
	
	return state

func player(state, action):
	var types = get_node('/root/ActionTypes')
	var store = get_node('/root/Store')
	
	match action['type']:
		types.PLAYER.SET_HEALTH:
			var next_state = store.shallow_copy(state)
			next_state['health'] = action['health']
			return next_state
	
	return state
