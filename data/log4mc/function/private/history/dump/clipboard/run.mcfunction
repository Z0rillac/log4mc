data modify storage log4mc:macro string set value ""
data modify storage log4mc:macro eol set from storage log4mc:unicode root.EOL
execute store result score loop log4mc.temp run data get storage log4mc:history root
function log4mc:private/history/dump/clipboard/loop