data modify storage log4mc:main level set value "DEBUG"
execute if score state log4mc.main = #load log4mc.enum run data modify storage log4mc:main state set value "L"
execute if score state log4mc.main = #tick log4mc.enum run data modify storage log4mc:main state set value "T"
function log4mc:private/log/run with storage log4mc:main