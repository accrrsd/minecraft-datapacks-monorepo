# Ensure player scores are valid
function half_heart:player_check_init

# Calculate effective potion healing limit for @s
# If #potion_max_hp == 0: heal up to full base health (hh_base_hp)
# If #potion_max_hp > 0: heal up to configured threshold (#potion_max_hp, default: 10)
scoreboard players operation #potion_cap hh_temp = #potion_max_hp hh_values
execute if score #potion_cap hh_temp matches 0 run scoreboard players operation #potion_cap hh_temp = @s hh_base_hp
execute if score #potion_cap hh_temp > @s hh_max_hp run scoreboard players operation #potion_cap hh_temp = @s hh_max_hp

# Restore 8 HP (4 hearts)
scoreboard players add @s hh_current_hp 8

# Cap current HP at effective potion limit
execute if score @s hh_current_hp > #potion_cap hh_temp run scoreboard players operation @s hh_current_hp = #potion_cap hh_temp

# Apply health to player entity
function half_heart:apply_health

# Instantly heal player to fill restored hearts
effect give @s instant_health 1 0 true

# Visual and audio effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.2
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 15
