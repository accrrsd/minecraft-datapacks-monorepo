scoreboard players set @s ct.shovel_check 0
execute if predicate ct.main:is_sneaking run function ct.main:api/on_sneak_mine
execute if predicate ct.main:is_sneaking run return 0
execute if predicate ct.shovel:holds_shovel at @s if entity @e[type=minecraft:item,tag=!ct.spawned,nbt={Age:0s},distance=..6,limit=1] run return run function ct.shovel:vanilla_excavators
execute if predicate ct.shovel:holds_shovel at @s run function ct.shovel:use
