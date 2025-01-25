data modify storage log4mc:temp string_copy set from storage log4mc:temp string
execute store result score length log4mc.temp run data get storage log4mc:temp string
scoreboard players operation loop log4mc.temp = length log4mc.temp

function log4mc:private/formatting/stringreader/text/sequence_start
scoreboard players set sequence_start log4mc.temp 0
scoreboard players set sequence_end log4mc.temp 0
scoreboard players set char_index log4mc.temp 0

execute if score loop log4mc.temp matches 1.. run function log4mc:private/formatting/stringreader/loop

function log4mc:private/formatting/stringreader/sequence_end