scoreboard objectives add log4mc dummy
scoreboard players set can_load log4mc 0
scoreboard players set first_load log4mc 0

function log4mc:private/module_manager/load/dimension_check
execute if score dimension_loaded log4mc matches 1 run scoreboard players set can_load log4mc 1

function log4mc:private/module_manager/load/first_load_check