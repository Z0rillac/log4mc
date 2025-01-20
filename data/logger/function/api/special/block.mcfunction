scoreboard players set #Logger.block.i logger.api 1

execute store result score #Logger.block.length logger.api run data get storage logger:api Block

function logger:zz_internal/block_entry with storage logger:api Block[0]

function logger:api/special/raw {message:"@@@ ]]", pos: ""}