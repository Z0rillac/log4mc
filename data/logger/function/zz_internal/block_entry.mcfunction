$function logger:api/special/raw {message:"@@@   $(entry)", pos: ""}

scoreboard players add #Logger.block.i logger.api 1

$execute if score #Logger.block.i logger.api <= #Logger.block.length logger.api run function logger:zz_internal/block_entry with storage logger:api Block[$(i)]