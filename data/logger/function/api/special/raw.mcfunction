# Raw export of text to console
#
# Score #Logger.Positioned: set to 1 if the log is positioned.
# $message: The message to be logged.
# $pos: If not positioned can be left as a blank string, when positioned set to `x:_, y:_, z:_` to specify coordinates.

$execute if score #Logger.Positioned logger.api matches 1 run function logger:zz_internal/positioned {message: "$(message)", $(pos)}

$execute if score #Logger.Positioned logger.api matches 0 in logger:coordinate positioned 0 0 0 run function logger:zz_internal/raw {message: "$(message)"}

scoreboard players set #Logger.Positioned logger.api 0