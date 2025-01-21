function log4mc:log_format with storage log4mc:history root[0]
data modify storage log4mc:macro concat set from storage log4mc:macro final
data modify storage log4mc:macro current set from storage log4mc:clipboard root
function log4mc:private/history/dump/clipboard/concat with storage log4mc:macro

data modify storage log4mc:history root append from storage log4mc:history root[0]
data remove storage log4mc:history root[0]

scoreboard players remove loop log4mc.temp 1
execute if score loop log4mc.temp matches 1.. run function log4mc:private/history/dump/clipboard/loop