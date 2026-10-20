execute if block ~ ~ ~ minecraft:air run function ct.main:raycast/target_step
execute if block ~ ~ ~ minecraft:air run return 0

execute if block ~ ~ ~ minecraft:cave_air run function ct.main:raycast/target_step
execute if block ~ ~ ~ minecraft:cave_air run return 0

execute if block ~ ~ ~ minecraft:water run function ct.main:raycast/target_step
execute if block ~ ~ ~ minecraft:water run return 0

execute if block ~ ~ ~ minecraft:lava run function ct.main:raycast/target_step
execute if block ~ ~ ~ minecraft:lava run return 0

# Solid block hit - summon target marker and determine face
kill @e[type=marker,tag=ct.target_block]
kill @e[type=marker,tag=ct.current_block]
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["ct.target_block"]}
function ct.main:raycast/full_block_trace
