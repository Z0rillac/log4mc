# For logging errors that should force normal operation of the server to stop for maintenance. All players will be notified.
#
# Score #Logger.Block: set to 1 if a block statement should be included with the log.
#   - Contained in `logger:api Block` data storage.
#   - Formatted as a list of `{entry: (message), i: (index+1)}`.
# $message: The message to be logged.
# $source: The source of the message. (usually the pack namespace)

$execute if score #Logger.Block logger.api matches 0 run function logger:api/special/raw {message:"@@@ ![MCFunction/FATAL - $(source)]!: $(message)", pos:""}

$execute if score #Logger.Block logger.api matches 1 run function logger:api/special/raw {message:"@@@ ![MCFunction/FATAL - $(source)]!: $(message) [[", pos:""}

execute if score #Logger.Block logger.api matches 1 run function logger:api/special/block

scoreboard players set #Logger.Block logger.api 0

$tellraw @a [{text: "[SERVER] ", color: "gray"}, {text: "[MCFunction/FATAL - $(source)] ", color: "dark_red"}, {text: "A critical error has been recorded in the server log. Server operations will be effected. Admins should be notified immediately.", color: "white"}]
