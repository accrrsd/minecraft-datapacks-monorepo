execute if block ~ ~ ~ #minecraft:logs run function ct.axe:start_tree_at_block
execute if block ~ ~ ~ #minecraft:logs run return 0
scoreboard players add $raycast_distance ct.dummy 1
execute if score $raycast_distance ct.dummy < $reach_hammer ct.dummy positioned ^ ^ ^0.5 run function ct.axe:do_raycast
