function log4mc:private/logger_init/load/vars
function log4mc:private/logger_init/load/default_config

execute in log4mc: run forceload add 0 0

scoreboard players operation method log4mc.main = #test_block log4mc.enum
execute unless entity @r run scoreboard players operation method log4mc.main = #say_command log4mc.enum
data modify storage log4mc:macro final set value "Log4MC is ready! All messages starting with '@@@' are datapack console logs."
function log4mc:private/raw_log/run