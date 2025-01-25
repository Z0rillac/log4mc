execute store success score score_marker log4mc.temp if data storage log4mc:temp {char:"%"}
execute if score score_marker log4mc.temp matches 1 run scoreboard players set marker_found log4mc.temp 1