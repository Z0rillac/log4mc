data modify storage log4mc:macro level set value "ERROR"
execute if score state log4mc.main = #load log4mc.enum run data modify storage log4mc:macro state set value "L"
execute if score state log4mc.main = #tick log4mc.enum run data modify storage log4mc:macro state set value "T"
function log4mc:private/log/run