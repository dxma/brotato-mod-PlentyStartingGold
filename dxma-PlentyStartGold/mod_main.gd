extends Node

const MOD_ID = "dxma-PlentyStartGold"
const LOG_NAME = "dxma-PlentyStartGold"

var mod_dir_path = ""
var extensions_dir_path = ""

func _init():
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(MOD_ID)
	extensions_dir_path = mod_dir_path.plus_file("extensions")
	ModLoaderMod.install_script_extension(extensions_dir_path.plus_file("singletons/run_data.gd"))

func _ready():
	ModLoaderLog.info("Ready!", LOG_NAME)
