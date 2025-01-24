scoreboard players operation method log4mc.main = #test_block log4mc.enum

scoreboard players operation state log4mc.main = #tick log4mc.enum

execute store result storage log4mc:macro gametime int 1 run time query gametime

$data modify storage log4mc:macro namespace set value "$(namespace)"