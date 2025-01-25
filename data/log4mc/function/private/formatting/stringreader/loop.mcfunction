data modify storage log4mc:temp char set string storage log4mc:temp string 0 1

execute if score sequence_type log4mc.temp = #text log4mc.enum run function log4mc:private/formatting/stringreader/text/run
execute if score sequence_type log4mc.temp = #score log4mc.enum run function log4mc:private/formatting/stringreader/score/run
execute if score sequence_type log4mc.temp = #storage log4mc.enum run function log4mc:private/formatting/stringreader/storage/run

data modify storage log4mc:temp string set string storage log4mc:temp string 1
scoreboard players add char_index log4mc.temp 1
scoreboard players remove loop log4mc.temp 1
execute if score loop log4mc.temp matches 1.. run function log4mc:private/formatting/stringreader/loop