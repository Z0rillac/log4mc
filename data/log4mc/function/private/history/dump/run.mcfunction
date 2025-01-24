execute store result score length log4mc.temp run data get storage log4mc:history root

execute if score length log4mc.temp matches 0 run tellraw @s {"text":"Nothing to dump","color":"red"}
execute if score length log4mc.temp matches 0 run return fail

function log4mc:private/history/dump/clipboard/run
function log4mc:private/history/dump/show with storage log4mc:macro
data modify storage log4mc:macro string set value ""

data modify storage log4mc:history root set value []

