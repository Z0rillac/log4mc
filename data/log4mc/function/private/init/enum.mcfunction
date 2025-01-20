scoreboard objectives add log4mc.enum dummy

scoreboard players set #false log4mc.enum 0
scoreboard players set #true log4mc.enum 1

scoreboard players set #off log4mc.enum 2147483647
scoreboard players set #fatal log4mc.enum 50000
scoreboard players set #error log4mc.enum 40000
scoreboard players set #warn log4mc.enum 30000
scoreboard players set #info log4mc.enum 20000
scoreboard players set #debug log4mc.enum 10000
scoreboard players set #trace log4mc.enum 5000
scoreboard players set #all log4mc.enum -2147483648

scoreboard players set #load log4mc.enum 1
scoreboard players set #tick log4mc.enum 2