$execute if score #Logger.Positioned logger.api matches 1 in logger:coordinate positioned $(x) 0 $(z) run forceload add ~ ~

$execute if score #Logger.Positioned logger.api matches 1 in logger:coordinate positioned $(x) $(y) $(z) run function logger:zz_internal/raw {message: "$(message)"}

$execute if score #Logger.Positioned logger.api matches 1 in logger:coordinate positioned $(x) 0 $(z) run forceload remove ~ ~