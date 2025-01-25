$data modify storage log4mc:macro message set value "$(m)"

scoreboard players operation level log4mc.temp = #fatal log4mc.enum
function log4mc:private/logging/filter

execute if score log_in_console log4mc.temp = #true log4mc.enum run function log4mc:private/logging/fatal/console
execute if score log_in_history log4mc.temp = #true log4mc.enum run function log4mc:private/logging/fatal/history