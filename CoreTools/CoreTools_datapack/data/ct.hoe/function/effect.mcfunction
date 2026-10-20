scoreboard players set $tool_type ct.dummy 4
execute at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=minecraft:item,tag=!ct.spawned,nbt={Age:0s},distance=..5,limit=1,sort=nearest] run return run function ct.hoe:do_lmb_mine
execute run function ct.hoe:use
