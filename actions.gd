extends Node

onready var types = get_node('/root/ActionTypes')

func game_set_start_time(time):
	return {
		'type': types.GAME.SET_START_TIME,
		'time': time
	}

func player_set_health(health):
	return {
		'type': types.PLAYER.SET_HEALTH,
		'health': health
	}
