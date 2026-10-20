scoreboard players set $tool_type ct.dummy 2
execute at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=minecraft:item,tag=!ct.spawned,nbt={Age:0s},distance=..5,limit=1,sort=nearest] run return run execute at @s anchored eyes positioned ^ ^ ^1.5 at @e[type=minecraft:item,tag=!ct.spawned,nbt={Age:0s},distance=..5,limit=1,sort=nearest] align xyz positioned ~0.5 ~0.5 ~0.5 run function ct.main:break/detect_plane
execute run function ct.shovel:use
