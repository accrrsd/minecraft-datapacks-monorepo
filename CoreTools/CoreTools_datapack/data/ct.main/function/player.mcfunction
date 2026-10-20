scoreboard players set $tool_type ct.dummy 0
execute if score @s ct.hammer_check matches 1.. at @s run function ct.hammer:check
execute if score @s ct.shovel_check matches 1.. at @s run function ct.shovel:check
execute if score @s ct.axe_check matches 1.. at @s run function ct.axe:check
execute if score @s ct.hoe_check matches 1.. at @s run function ct.hoe:check

# Raycast every tick to detect the target block and update ct.target_plane
execute at @s if predicate ct.shovel:holds_shovel run function ct.main:raycast/target_start
execute at @s if predicate ct.hammer:holds_hammer run function ct.main:raycast/target_start
execute at @s if predicate ct.axe:axe run function ct.main:raycast/target_start
