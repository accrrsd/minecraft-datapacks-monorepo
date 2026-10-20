execute if score $axe_count ct.dummy matches 128.. run return 0
execute if block ~ ~ ~ #minecraft:leaves run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ #minecraft:logs run function ct.axe:mine_found_log
