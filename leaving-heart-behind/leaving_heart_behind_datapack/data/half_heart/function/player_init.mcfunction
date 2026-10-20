# Initialize player on first join
# Capture initial base health (e.g. 20, or origins/modded health)
execute store result score @s hh_base_hp run attribute @s minecraft:max_health base get 1

# If reading returned 0 or negative, fallback to default base health (#default_base_hp = 20)
execute unless score @s hh_base_hp matches 1.. run scoreboard players operation @s hh_base_hp = #default_base_hp hh_values

# Initialize max health capacity to base health
scoreboard players operation @s hh_max_hp = @s hh_base_hp

# Initialize current health to base health
scoreboard players operation @s hh_current_hp = @s hh_base_hp

# Mark player as initialized
tag @s add hh_initialized

# Assign default language if unset (inherits from #server_lang)
execute unless score @s hh_lang matches 1..5 run scoreboard players operation @s hh_lang = #server_lang hh_values

# Enable player to use trigger /trigger hh_select_lang
scoreboard players enable @s hh_select_lang

# Apply initial health
function half_heart:apply_health
