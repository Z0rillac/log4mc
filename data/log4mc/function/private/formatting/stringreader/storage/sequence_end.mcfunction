function log4mc:private/formatting/stringreader/text/sequence_start

scoreboard players operation sequence_end log4mc.temp = char_index log4mc.temp
scoreboard players add sequence_start log4mc.temp 1

function log4mc:private/formatting/stringreader/storage/append_storage

scoreboard players operation sequence_start log4mc.temp = char_index log4mc.temp