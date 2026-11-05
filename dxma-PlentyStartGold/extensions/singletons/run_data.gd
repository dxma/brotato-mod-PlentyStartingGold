extends "res://singletons/run_data.gd"

const MOD_ID = "dxma-PlentyStartGold"
const LOG_NAME = "dxma-PlentyStartGold"

func set_player_count(count: int, reset: = false) -> void:
	.set_player_count(count, reset)

	for player_index in RunData.get_player_count():
		var player_data = RunData.players_data[player_index]
		ModLoaderLog.info("Set player %d starting_gold to 100000.", player_index, LOG_NAME)
		player_data.gold = 100000
