# Custom simple raycast to find dirt blocks to turn into paths
execute anchored eyes positioned ^ ^ ^0.2 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^0.4 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^0.6 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^0.8 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^1.0 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^1.2 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^1.4 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^1.6 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^1.8 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^2.0 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^2.2 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^2.4 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^2.6 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^2.8 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^3.0 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^3.2 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^3.4 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^3.6 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^3.8 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^4.0 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^4.2 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^4.4 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}
execute anchored eyes positioned ^ ^ ^4.6 unless entity @e[tag=ct.shovel.path_loc,distance=..6] if block ~ ~ ~ minecraft:dirt_path run summon minecraft:marker ~ ~ ~ {Tags:["ct.shovel.path_loc"]}

execute as @e[tag=ct.shovel.path_loc,distance=..6] at @s align xyz positioned ~0.5 ~ ~0.5 run function ct.shovel:path_3x3
kill @e[tag=ct.shovel.path_loc]
