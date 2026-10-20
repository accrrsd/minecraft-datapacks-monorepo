execute if score @s ct.ray_dist matches ..0 run return 0
scoreboard players remove @s ct.ray_dist 1

# Step forward
tp @s ^ ^ ^0.1

# UPDATE EXECUTION POSITION!
execute at @s run function ct.main:raycast/target_step_check
