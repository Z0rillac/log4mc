scoreboard players set #Logger.block.i logger.api 1

# Length is already stored by the time this function is called

function logger:zz_internal/debug_block_entry with storage logger:api Block[0]

tellraw @a[tag=logger.debugging] [{text: "]]", color: "gray"}]