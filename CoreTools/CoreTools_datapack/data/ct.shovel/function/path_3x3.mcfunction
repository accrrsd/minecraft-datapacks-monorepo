playsound minecraft:item.shovel.flatten block @a ~ ~ ~ 1 1
execute positioned ~1 ~ ~1 run function ct.shovel:path_single
execute positioned ~1 ~ ~ run function ct.shovel:path_single
execute positioned ~1 ~ ~-1 run function ct.shovel:path_single
execute positioned ~-1 ~ ~1 run function ct.shovel:path_single
execute positioned ~-1 ~ ~ run function ct.shovel:path_single
execute positioned ~-1 ~ ~-1 run function ct.shovel:path_single
execute positioned ~ ~ ~1 run function ct.shovel:path_single
execute positioned ~ ~ ~-1 run function ct.shovel:path_single
execute positioned ~ ~ ~ run function ct.shovel:path_single
