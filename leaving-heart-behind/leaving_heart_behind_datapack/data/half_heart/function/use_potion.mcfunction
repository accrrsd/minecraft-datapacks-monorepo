# Reset advancement for repeated consumption
advancement revoke @s only half_heart:use_potion

# Safety initialization for player
function half_heart:player_check_init

# Calculate effective potion healing limit for @s
# If #potion_max_hp == 0: heal up to full base health (hh_base_hp)
# If #potion_max_hp > 0: heal up to configured threshold (#potion_max_hp, default: 10)
scoreboard players operation #potion_cap hh_temp = #potion_max_hp hh_values
execute if score #potion_cap hh_temp matches 0 run scoreboard players operation #potion_cap hh_temp = @s hh_base_hp

# Potion cap can never exceed player's hh_max_hp
execute if score #potion_cap hh_temp > @s hh_max_hp run scoreboard players operation #potion_cap hh_temp = @s hh_max_hp

# Potion restores health only if current_hp is strictly less than effective potion cap
# If current_hp >= #potion_cap, it is consumed with no effect
execute if score @s hh_current_hp < #potion_cap hh_temp run function half_heart:apply_potion_heal
