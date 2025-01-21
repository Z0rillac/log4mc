scoreboard players operation init_last_gametime log4mc.main = init_gametime log4mc.main
function log4mc:private/init/enum
function log4mc:private/init/default_config

scoreboard players operation ready log4mc.main = #false log4mc.enum
execute store success score dimension_loaded log4mc.temp in log4mc: if score #true log4mc.enum = #true log4mc.enum
execute if score dimension_loaded log4mc.temp = #true log4mc.enum run scoreboard players operation ready log4mc.main = #true log4mc.enum

execute if score ready log4mc.main = #true log4mc.enum in log4mc: run forceload add 0 0

function log4mc:private/init/special_chars
data merge storage log4mc:main {}
data merge storage log4mc:history {}

function log4mc:private/raw_log/run {m:"@@@ Log4MC is ready! All messages starting with '@@@' are datapack console logs."}