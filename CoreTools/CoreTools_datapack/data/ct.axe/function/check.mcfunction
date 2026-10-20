scoreboard players set @s ct.axe_check 0
execute if predicate ct.main:is_sneaking run function ct.main:api/on_sneak_mine
execute if predicate ct.main:is_sneaking run return 0
execute if predicate ct.axe:axe run function ct.axe:effect
