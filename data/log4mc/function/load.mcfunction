scoreboard objectives add log4mc.main dummy
scoreboard objectives add log4mc.temp dummy

scoreboard players add init_last_gametime log4mc.main 0
execute store result score init_gametime log4mc.main run time query gametime
execute unless score init_gametime log4mc.main = init_last_gametime log4mc.main run function log4mc:private/init/load

scoreboard players operation state log4mc.main = #load log4mc.enum
execute store result storage log4mc:main gametime int 1 run time query gametime
$data modify storage log4mc:main namespace set value "$(namespace)"