# Immediate Y+1 3x3 layer
execute positioned ~ ~1 ~ run function ct.axe:check_log
execute positioned ~1 ~1 ~ run function ct.axe:check_log
execute positioned ~-1 ~1 ~ run function ct.axe:check_log
execute positioned ~ ~1 ~1 run function ct.axe:check_log
execute positioned ~ ~1 ~-1 run function ct.axe:check_log
execute positioned ~1 ~1 ~1 run function ct.axe:check_log
execute positioned ~-1 ~1 ~1 run function ct.axe:check_log
execute positioned ~1 ~1 ~-1 run function ct.axe:check_log
execute positioned ~-1 ~1 ~-1 run function ct.axe:check_log

# Y+2 vertical & branch reach
execute positioned ~ ~2 ~ run function ct.axe:check_log
execute positioned ~1 ~2 ~ run function ct.axe:check_log
execute positioned ~-1 ~2 ~ run function ct.axe:check_log
execute positioned ~ ~2 ~1 run function ct.axe:check_log
execute positioned ~ ~2 ~-1 run function ct.axe:check_log
execute positioned ~2 ~1 ~ run function ct.axe:check_log
execute positioned ~-2 ~1 ~ run function ct.axe:check_log
execute positioned ~ ~1 ~2 run function ct.axe:check_log
execute positioned ~ ~1 ~-2 run function ct.axe:check_log

# Current Y=0 3x3 horizontal layer
execute positioned ~1 ~ ~ run function ct.axe:check_log
execute positioned ~-1 ~ ~ run function ct.axe:check_log
execute positioned ~ ~ ~1 run function ct.axe:check_log
execute positioned ~ ~ ~-1 run function ct.axe:check_log
execute positioned ~1 ~ ~1 run function ct.axe:check_log
execute positioned ~-1 ~ ~1 run function ct.axe:check_log
execute positioned ~1 ~ ~-1 run function ct.axe:check_log
execute positioned ~-1 ~ ~-1 run function ct.axe:check_log
execute positioned ~2 ~ ~ run function ct.axe:check_log
execute positioned ~-2 ~ ~ run function ct.axe:check_log
execute positioned ~ ~ ~2 run function ct.axe:check_log
execute positioned ~ ~ ~-2 run function ct.axe:check_log

# Y-1 3x3 layer
execute positioned ~ ~-1 ~ run function ct.axe:check_log
execute positioned ~1 ~-1 ~ run function ct.axe:check_log
execute positioned ~-1 ~-1 ~ run function ct.axe:check_log
execute positioned ~ ~-1 ~1 run function ct.axe:check_log
execute positioned ~ ~-1 ~-1 run function ct.axe:check_log
execute positioned ~1 ~-1 ~1 run function ct.axe:check_log
execute positioned ~-1 ~-1 ~1 run function ct.axe:check_log
execute positioned ~1 ~-1 ~-1 run function ct.axe:check_log
execute positioned ~-1 ~-1 ~-1 run function ct.axe:check_log
