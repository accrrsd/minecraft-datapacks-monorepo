execute unless block ~ ~ ~ #minecraft:mineable/pickaxe run return 0
execute if block ~ ~ ~ #ct.main:protected_blocks run return 0

#   XP SUMMONING (Randomized)
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ #minecraft:coal_ores run function ct.hammer:mine/xp_0_2
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ #minecraft:redstone_ores run function ct.hammer:mine/xp_1_5
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ #minecraft:emerald_ores run function ct.hammer:mine/xp_3_7
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ #minecraft:lapis_ores run function ct.hammer:mine/xp_2_5
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ #minecraft:diamond_ores run function ct.hammer:mine/xp_3_7
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ nether_gold_ore run function ct.hammer:mine/xp_0_1
execute unless predicate ct.hammer:has_silk_touch run execute if block ~ ~ ~ nether_quartz_ore run function ct.hammer:mine/xp_2_5

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
