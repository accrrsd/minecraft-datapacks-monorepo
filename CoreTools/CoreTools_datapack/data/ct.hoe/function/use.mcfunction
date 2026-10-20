# Raycast along player's line of sight looking for a crop block or farmland
# Each step places a marker at that position if found
execute anchored eyes positioned ^ ^ ^0.2 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^0.4 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^0.6 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^0.8 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^1.0 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^1.2 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^1.4 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^1.6 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^1.8 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^2.0 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^2.2 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^2.4 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^2.6 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^2.8 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^3.0 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^3.2 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^3.4 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^3.6 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^3.8 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^4.0 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^4.2 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^4.4 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}
execute anchored eyes positioned ^ ^ ^4.6 unless entity @e[tag=ct.hoe.crop_loc,distance=..6] if block ~ ~ ~ #ct.hoe:crops run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.crop_loc"]}

# If we found a crop, harvest 3x3 around the marker then kill it
execute as @e[tag=ct.hoe.crop_loc,distance=..6] at @s align xyz positioned ~0.5 ~ ~0.5 run function ct.hoe:harvest_3x3
kill @e[tag=ct.hoe.crop_loc]

# Also raycast for farmland (created by vanilla RMB)
execute anchored eyes positioned ^ ^ ^0.2 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^0.4 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^0.6 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^0.8 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^1.0 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^1.2 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^1.4 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^1.6 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^1.8 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^2.0 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^2.2 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^2.4 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^2.6 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^2.8 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^3.0 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^3.2 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^3.4 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^3.6 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^3.8 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^4.0 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^4.2 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^4.4 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}
execute anchored eyes positioned ^ ^ ^4.6 unless entity @e[tag=ct.hoe.till_loc,distance=..6] if block ~ ~ ~ minecraft:farmland run summon minecraft:marker ~ ~ ~ {Tags:["ct.hoe.till_loc"]}

# If we found farmland, till 3x3 around the marker then kill it
execute as @e[tag=ct.hoe.till_loc,distance=..6] at @s align xyz positioned ~0.5 ~ ~0.5 run function ct.hoe:till_3x3
kill @e[tag=ct.hoe.till_loc]
