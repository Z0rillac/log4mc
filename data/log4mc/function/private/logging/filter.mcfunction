scoreboard players operation log_in_console log4mc.temp = #false log4mc.enum
scoreboard players operation log_in_history log4mc.temp = #false log4mc.enum
scoreboard players operation prepare_log log4mc.temp = #false log4mc.enum

execute if score console log4mc.settings = #true log4mc.enum if score console_level log4mc.settings <= level log4mc.temp run scoreboard players operation log_in_console log4mc.temp = #true log4mc.enum
execute if score history log4mc.settings = #true log4mc.enum if score history_level log4mc.settings <= level log4mc.temp run scoreboard players operation log_in_history log4mc.temp = #true log4mc.enum

execute if score log_in_console log4mc.temp = #true log4mc.enum run scoreboard players operation prepare_log log4mc.temp = #true log4mc.enum
execute if score log_in_history log4mc.temp = #true log4mc.enum run scoreboard players operation prepare_log log4mc.temp = #true log4mc.enum