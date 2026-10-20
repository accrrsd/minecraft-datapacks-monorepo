playsound minecraft:item.axe.strip block @a ~ ~ ~ 1 1
execute positioned ~1 ~ ~1 run function ct.axe:strip_single
execute positioned ~1 ~ ~ run function ct.axe:strip_single
execute positioned ~1 ~ ~-1 run function ct.axe:strip_single
execute positioned ~-1 ~ ~1 run function ct.axe:strip_single
execute positioned ~-1 ~ ~ run function ct.axe:strip_single
execute positioned ~-1 ~ ~-1 run function ct.axe:strip_single
execute positioned ~ ~ ~1 run function ct.axe:strip_single
execute positioned ~ ~ ~-1 run function ct.axe:strip_single
execute positioned ~ ~ ~ run function ct.axe:strip_single

execute positioned ~1 ~1 ~ run function ct.axe:strip_single
execute positioned ~-1 ~1 ~ run function ct.axe:strip_single
execute positioned ~ ~1 ~1 run function ct.axe:strip_single
execute positioned ~ ~1 ~-1 run function ct.axe:strip_single
execute positioned ~ ~1 ~ run function ct.axe:strip_single

execute positioned ~1 ~-1 ~ run function ct.axe:strip_single
execute positioned ~-1 ~-1 ~ run function ct.axe:strip_single
execute positioned ~ ~-1 ~1 run function ct.axe:strip_single
execute positioned ~ ~-1 ~-1 run function ct.axe:strip_single
execute positioned ~ ~-1 ~ run function ct.axe:strip_single
