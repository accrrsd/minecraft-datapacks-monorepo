# Applies current health to player entity using attribute base set
# Clamp lower bound (min HP)
execute if score @s hh_current_hp < #min_hp hh_values run scoreboard players operation @s hh_current_hp = #min_hp hh_values

# Clamp upper bound (server max HP)
execute if score @s hh_current_hp > #max_hp hh_values run scoreboard players operation @s hh_current_hp = #max_hp hh_values

# Store score into storage as double for macro
execute store result storage half_heart:temp val double 1 run scoreboard players get @s hh_current_hp

# Call macro function to execute: /attribute @s minecraft:max_health base set $(val)
function half_heart:set_hp/base_set_macro with storage half_heart:temp
