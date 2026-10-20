execute unless block ~ ~ ~ #minecraft:mineable/axe run return 0
execute if block ~ ~ ~ #ct.main:protected_blocks run return 0

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air
