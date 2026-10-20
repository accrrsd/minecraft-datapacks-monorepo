playsound minecraft:item.hoe.till block @a ~ ~ ~ 1 1
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~1 run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~ run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~1 ~ ~-1 run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~1 run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~ run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~-1 ~ ~-1 run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~ ~ ~1 run function ct.hoe:till_single
execute unless score #ct.sneaking ct.dummy matches 1 positioned ~ ~ ~-1 run function ct.hoe:till_single
execute positioned ~ ~ ~ run function ct.hoe:till_single
