scoreboard objectives add ct.raycast_distance dummy
scoreboard objectives add ct.dummy dummy
scoreboard objectives add ct.target_flat dummy
scoreboard objectives add ct.target_plane dummy
scoreboard objectives add ct.reach dummy
scoreboard objectives add ct.ray_dist dummy
scoreboard objectives add ct.mine_target_was_block dummy

scoreboard objectives add ct.hammer_check minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add ct.shovel_check minecraft.used:minecraft.diamond_shovel
scoreboard objectives add ct.axe_check minecraft.used:minecraft.diamond_axe
scoreboard objectives add ct.hoe_check minecraft.used:minecraft.diamond_hoe
execute in minecraft:overworld run forceload add -20000000 100 -20000000 100
execute in minecraft:overworld unless block -20000000 -64 99 minecraft:chest run setblock -20000000 -64 99 minecraft:chest
