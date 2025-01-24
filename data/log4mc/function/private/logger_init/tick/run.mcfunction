scoreboard players operation state log4mc.main = #tick log4mc.enum
execute store result storage log4mc:main gametime int 1 run time query gametime
$data modify storage log4mc:main namespace set value "$(namespace)"