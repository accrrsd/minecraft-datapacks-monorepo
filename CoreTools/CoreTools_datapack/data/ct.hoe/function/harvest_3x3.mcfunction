playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1

# Replant central block (which was broken by player LMB and turned to air)
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:wheat"}}] run setblock ~ ~ ~ minecraft:wheat[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:wheat_seeds"}}] run setblock ~ ~ ~ minecraft:wheat[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:carrot"}}] run setblock ~ ~ ~ minecraft:carrots[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:potato"}}] run setblock ~ ~ ~ minecraft:potatoes[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:beetroot"}}] run setblock ~ ~ ~ minecraft:beetroots[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:beetroot_seeds"}}] run setblock ~ ~ ~ minecraft:beetroots[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:soul_sand if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:nether_wart"}}] run setblock ~ ~ ~ minecraft:nether_wart[age=0] replace
execute if block ~ ~ ~ minecraft:air if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:cocoa_beans"}}] run setblock ~ ~ ~ minecraft:cocoa[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:torchflower_seeds"}}] run setblock ~ ~ ~ minecraft:torchflower_crop[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland if entity @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:pitcher_pod"}}] run setblock ~ ~ ~ minecraft:pitcher_crop[age=0] replace
execute if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:farmland run setblock ~ ~ ~ minecraft:wheat[age=0] replace

# Harvest and replant surrounding 8 blocks if not sneaking
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~1 run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~ run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~-1 run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~1 run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~ run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~-1 run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~ ~ ~1 run function ct.hoe:harvest_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~ ~ ~-1 run function ct.hoe:harvest_single
