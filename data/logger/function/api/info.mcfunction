# For logging general information that should always be recorded
#
# Score #Logger.Block: set to 1 if a block statement should be included with the log.
#   - Contained in `logger:api Block` data storage.
#   - Formatted as a list of `{entry: (message), i: (index+1)}`.
# $message: The message to be logged.
# $source: The source of the message. (usually the pack namespace)

$execute if score #Logger.Block logger.api matches 0 run function logger:api/special/raw {message:"@@@ [MCFunction/INFO - $(source)]: $(message)", pos:""}

$execute if score #Logger.Block logger.api matches 1 run function logger:api/special/raw {message:"@@@ [MCFunction/INFO - $(source)]: $(message) [[", pos:""}

execute if score #Logger.Block logger.api matches 1 run function logger:api/special/block

scoreboard players set #Logger.Block logger.api 0