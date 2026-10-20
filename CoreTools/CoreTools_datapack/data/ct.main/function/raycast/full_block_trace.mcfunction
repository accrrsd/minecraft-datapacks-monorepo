# Flat blocks (snow layers) force Plane 1 and target_flat 1 for consistent mining
scoreboard players set @p ct.target_flat 0
execute if block ~ ~ ~ #ct.main:flat_blocks run scoreboard players set @p ct.target_flat 1

# Summon current_block at the previous ray step position (always outside block)
kill @e[type=marker,tag=ct.current_block]
execute positioned ^ ^ ^-0.1 align xyz run summon minecraft:marker ~ ~ ~ {Tags:["ct.current_block"]}

scoreboard players set @p ct.target_plane 0
execute if score @p ct.target_flat matches 1 run scoreboard players set @p ct.target_plane 1
execute if score @p ct.target_flat matches 0 run function ct.main:raycast/target_face_found
