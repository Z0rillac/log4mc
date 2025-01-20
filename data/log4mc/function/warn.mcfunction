$data modify storage log4mc:main message set value "$(m)"

execute if score console log4mc.main = #true log4mc.enum if score #warn log4mc.enum >= console_level log4mc.main run function log4mc:private/log/warn/console
execute if score history log4mc.main = #true log4mc.enum if score #warn log4mc.enum >= history_level log4mc.main run function log4mc:private/log/warn/history