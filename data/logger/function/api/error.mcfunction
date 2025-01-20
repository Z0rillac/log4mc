# For logging errors that can be recovered from but should be reported and/or addressed quickly
#
# Score #Logger.Block: set to 1 if a block statement should be included with the log.
#   - Contained in `logger:api Block` data storage.
#   - Formatted as a list of `{entry: (message), i: (index+1)}`.
# Label Tag logger.staff: set to any player that should be notified of errors.
# $message: The message to be logged.
# $source: The source of the message. (usually the pack namespace)

$execute if score #Logger.Block logger.api matches 0 run function logger:api/special/raw {message:"@@@ [MCFunction/ERROR - $(source)]: $(message)", pos:""}

$execute if score #Logger.Block logger.api matches 1 run function logger:api/special/raw {message:"@@@ [MCFunction/ERROR - $(source)]: $(message) [[", pos:""}

execute if score #Logger.Block logger.api matches 1 run function logger:api/special/block

scoreboard players set #Logger.Block logger.api 0

$tellraw @a[tag=logger.staff] [{text: "[MCFunction/ERROR - $(source)] ", color: "dark_red"}, {text: "An error has been recorded in the server log, reporting and/or server maintenance should occur.", color: "white"}]