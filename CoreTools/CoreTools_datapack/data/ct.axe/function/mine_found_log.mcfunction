scoreboard players add $axe_count ct.dummy 1

execute if score $tile_drops ct.dummy matches 1 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air replace
playsound minecraft:block.wood.break block @a ~ ~ ~ 0.5 1

function ct.axe:scan_surrounding
