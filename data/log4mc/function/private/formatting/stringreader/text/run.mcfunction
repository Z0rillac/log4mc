scoreboard players set marker_found log4mc.temp 0

execute if score marker_found log4mc.temp matches 0 run function log4mc:private/formatting/stringreader/text/test_score
execute if score marker_found log4mc.temp matches 0 run function log4mc:private/formatting/stringreader/text/test_storage

execute if score marker_found log4mc.temp matches 1 run function log4mc:private/formatting/stringreader/text/test_next_char

execute if score marker_found log4mc.temp matches 1 run function log4mc:private/formatting/stringreader/text/sequence_end