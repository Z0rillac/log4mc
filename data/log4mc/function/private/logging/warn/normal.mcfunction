$data modify storage log4mc:macro message set value "$(m)"

scoreboard players operation level log4mc.temp = #warn log4mc.enum
function log4mc:private/logging/filter

execute if score log_in_console log4mc.temp = #true log4mc.enum run function log4mc:private/logging/warn/console
execute if score log_in_history log4mc.temp = #true log4mc.enum run function log4mc:private/logging/warn/history