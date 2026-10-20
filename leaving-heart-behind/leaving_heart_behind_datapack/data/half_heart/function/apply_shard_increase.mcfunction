# Ensure player scores are valid and initialized
function half_heart:player_check_init

# Increase player's maximum health capacity by configured shard gain (#shard_hp, default: 2)
scoreboard players operation @s hh_max_hp += #shard_hp hh_values

# Cap max HP at server #max_hp limit (default: 60 HP)
execute if score @s hh_max_hp > #max_hp hh_values run scoreboard players operation @s hh_max_hp = #max_hp hh_values

# Also increase player's current HP by configured shard gain (#shard_hp, default: 2)
scoreboard players operation @s hh_current_hp += #shard_hp hh_values

# Cap current HP at player's max HP limit
execute if score @s hh_current_hp > @s hh_max_hp run scoreboard players operation @s hh_current_hp = @s hh_max_hp

# Apply updated health to player entity via attribute macro
function half_heart:apply_health

# Instantly heal player to fill the newly granted heart container
effect give @s instant_health 1 0 true

# Audio-visual effects
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 30

# Localized notification to player
function half_heart:lang/msg_shard
