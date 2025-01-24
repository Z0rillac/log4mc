function log4mc:private/module_manager/load/run

execute if score can_load log4mc matches 0 if score first_load log4mc matches 1 run say §c@@@ Enable to load Log4MC ! Please restart your world.
execute if score can_load log4mc matches 0 run return fail
execute if score can_load log4mc matches 1 if score first_load log4mc matches 1 run function log4mc:private/logger_init/load/load

scoreboard players operation method log4mc.main = #test_block log4mc.enum
execute unless entity @r run scoreboard players operation method log4mc.main = #say_command log4mc.enum

scoreboard players operation state log4mc.main = #load log4mc.enum

execute store result storage log4mc:macro gametime int 1 run time query gametime

$data modify storage log4mc:macro namespace set value "$(namespace)"