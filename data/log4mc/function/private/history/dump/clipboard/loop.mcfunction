data modify storage log4mc:macro message set from storage log4mc:history root[0].message
data modify storage log4mc:macro gametime set from storage log4mc:history root[0].gametime
data modify storage log4mc:macro namespace set from storage log4mc:history root[0].namespace
execute store result score level log4mc.temp run data get storage log4mc:history root[0].level
execute if score level log4mc.temp = #trace log4mc.enum run data modify storage log4mc:macro level set value "TRACE"
execute if score level log4mc.temp = #debug log4mc.enum run data modify storage log4mc:macro level set value "DEBUG"
execute if score level log4mc.temp = #info log4mc.enum run data modify storage log4mc:macro level set value "INFO"
execute if score level log4mc.temp = #warn log4mc.enum run data modify storage log4mc:macro level set value "WARN"
execute if score level log4mc.temp = #error log4mc.enum run data modify storage log4mc:macro level set value "ERROR"
execute if score level log4mc.temp = #fatal log4mc.enum run data modify storage log4mc:macro level set value "FATAL"
execute store result score state log4mc.temp run data get storage log4mc:history root[0].state
execute if score state log4mc.temp = #load log4mc.enum run data modify storage log4mc:macro state set value "L"
execute if score state log4mc.temp = #tick log4mc.enum run data modify storage log4mc:macro state set value "T"
function log4mc:log_format with storage log4mc:macro

data modify storage log4mc:macro concat set from storage log4mc:macro final
function log4mc:private/history/dump/clipboard/concat with storage log4mc:macro

data modify storage log4mc:history root append from storage log4mc:history root[0]
data remove storage log4mc:history root[0]

scoreboard players remove loop log4mc.temp 1
execute if score loop log4mc.temp matches 1.. run function log4mc:private/history/dump/clipboard/loop
