data modify storage log4mc:clipboard root set value ""
data modify storage log4mc:macro eol set from storage log4mc:unicode EOL
execute store result score loop log4mc.temp run data get storage log4mc:history root
function log4mc:private/history/dump/clipboard/loop