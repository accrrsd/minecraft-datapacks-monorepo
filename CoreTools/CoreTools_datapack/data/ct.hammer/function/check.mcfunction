scoreboard players set @s ct.hammer_check 0
execute if predicate ct.main:is_sneaking run function ct.main:api/on_sneak_mine
execute if predicate ct.main:is_sneaking run return 0
execute if predicate ct.hammer:holds_hammer at @s if entity @e[type=minecraft:item,tag=!ct.spawned,nbt={Age:0s},distance=..6,limit=1] run return run function ct.hammer:vanilla_hammers
