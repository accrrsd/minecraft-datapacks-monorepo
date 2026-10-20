execute store result score @s ct.reach run attribute @s minecraft:block_interaction_range get 10
scoreboard players add @s ct.reach 5
scoreboard players operation @s ct.ray_dist = @s ct.reach

# Default fallback if attribute is missing
execute if score @s ct.ray_dist matches 0 run scoreboard players set @s ct.ray_dist 45

# Reset planes
scoreboard players set @s ct.target_flat 0
scoreboard players set @s ct.target_plane 0

# Start raycast using a marker
kill @e[type=marker,tag=ct.ray]
execute at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["ct.ray"]}

# Copy exact rotation using NBT
data modify entity @e[type=marker,tag=ct.ray,limit=1] Rotation set from entity @p Rotation

# Copy reach to marker
execute as @e[type=marker,tag=ct.ray,limit=1] run scoreboard players operation @s ct.ray_dist = @p ct.ray_dist

# Execute the step loop
execute as @e[type=marker,tag=ct.ray,limit=1] at @s run function ct.main:raycast/target_step
