# For logging debugging info that should not be recorded by default in production
#
# Score #Logger.Block: set to 1 if a block statement should be included with the log.
#   - Contained in `logger:api Block` data storage.
#   - Formatted as a list of `{entry: (message), i: (index+1)}`.
# Label Tag logger.debugging: set to any player that should receive debugging messages.
# $message: The message to be logged.
# $source: The source of the message. (usually the pack namespace)

$execute if score #Logger.Block logger.api matches 0 run function logger:api/special/raw {message:"@@@ [MCFunction/DEBUG - $(source)]: $(message)", pos:""}

$execute if score #Logger.Block logger.api matches 1 run function logger:api/special/raw {message:"@@@ [MCFunction/DEBUG - $(source)]: $(message) [[", pos:""}

execute if score #Logger.Block logger.api matches 1 run function logger:api/special/block

$execute if score #Logger.Block logger.api matches 0 run tellraw @a[tag=logger.debugging] [{text: "[MCFunction/DEBUG - $(source)] ", color: "dark_aqua"}, {text: "$(message)", color: "white"}]

$execute if score #Logger.Block logger.api matches 1 run tellraw @a[tag=logger.debugging] [{text: "[MCFunction/DEBUG - $(source)] ", color: "dark_aqua"}, {text: "$(message)", color: "white"}, {text: " [[", color: "gray"}]

execute if score #Logger.Block logger.api matches 1 run function logger:zz_internal/debug_block

scoreboard players set #Logger.Block logger.api 0
