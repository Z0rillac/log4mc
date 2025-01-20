$tellraw @a[tag=logger.debugging] [{text: "  $(entry)", color: "white"}]

scoreboard players add #Logger.block.i logger.api 1

$execute if score #Logger.block.i logger.api <= #Logger.block.length logger.api run function logger:zz_internal/debug_block_entry with storage logger:api Block[$(i)]