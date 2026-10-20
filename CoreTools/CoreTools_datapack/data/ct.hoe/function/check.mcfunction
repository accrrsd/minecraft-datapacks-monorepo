scoreboard players set @s ct.hoe_check 0
scoreboard players set #ct.sneaking ct.dummy 0
execute if predicate ct.main:is_sneaking run function ct.main:api/on_sneak_mine
execute if predicate ct.main:is_sneaking run scoreboard players set #ct.sneaking ct.dummy 1
execute if predicate ct.hoe:hoe run function ct.hoe:effect
