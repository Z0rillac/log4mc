execute if score score_marker log4mc.temp matches 1 run function log4mc:private/formatting/stringreader/score/sequence_start
execute if score storage_marker log4mc.temp matches 1 run function log4mc:private/formatting/stringreader/storage/sequence_start

scoreboard players operation sequence_end log4mc.temp = char_index log4mc.temp

function log4mc:private/formatting/stringreader/text/append_text

scoreboard players operation sequence_start log4mc.temp = char_index log4mc.temp