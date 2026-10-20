execute unless block ~ ~ ~ #minecraft:mineable/shovel run return 0
execute if block ~ ~ ~ #ct.main:protected_blocks run return 0

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
