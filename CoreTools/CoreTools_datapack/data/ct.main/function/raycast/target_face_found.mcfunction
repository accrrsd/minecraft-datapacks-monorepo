# Compare target_block (hit cell) and current_block (previous step cell)
# to determine which face was hit

# Check 6 directly adjacent cells
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~ ~1 ~ if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 1
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~ ~-1 ~ if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 1
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~1 ~ ~ if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 2
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~-1 ~ ~ if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 2
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~ ~ ~1 if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 3
execute at @e[type=marker,tag=ct.target_block,limit=1] positioned ~ ~ ~-1 if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set @p ct.target_plane 3

# Plane still 0 = same block cell (entered through fractional face, e.g. top of slab)
# OR diagonal edge hit (two cells changed at once due to steep diagonal angle)
# Check if same cell:
scoreboard players set #same_block ct.dummy 0
execute at @e[type=marker,tag=ct.target_block,limit=1] if entity @e[type=marker,tag=ct.current_block,distance=..0.1] run scoreboard players set #same_block ct.dummy 1

# Same block cell = entered from inside (fractional face hit = top/bottom). Plane 1!
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 1 run scoreboard players set @p ct.target_plane 1

# Different cell but diagonal exit (two axes changed): use yaw to pick Plane 2 vs 3
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 0 if entity @p[y_rotation=-45..45] run scoreboard players set @p ct.target_plane 3
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 0 if entity @p[y_rotation=135..180] run scoreboard players set @p ct.target_plane 3
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 0 if entity @p[y_rotation=-180..-135] run scoreboard players set @p ct.target_plane 3
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 0 if entity @p[y_rotation=45..135] run scoreboard players set @p ct.target_plane 2
execute if score @p ct.target_plane matches 0 if score #same_block ct.dummy matches 0 if entity @p[y_rotation=-135..-45] run scoreboard players set @p ct.target_plane 2

# Cleanup
kill @e[type=marker,tag=ct.target_block]
kill @e[type=marker,tag=ct.current_block]
