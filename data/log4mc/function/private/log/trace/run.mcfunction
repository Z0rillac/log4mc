$data modify storage log4mc:macro message set value "$(m)"

execute if score console log4mc.settings = #true log4mc.enum if score #trace log4mc.enum >= console_level log4mc.settings run function log4mc:private/log/trace/console
execute if score history log4mc.settings = #true log4mc.enum if score #trace log4mc.enum >= history_level log4mc.settings run function log4mc:private/log/trace/history