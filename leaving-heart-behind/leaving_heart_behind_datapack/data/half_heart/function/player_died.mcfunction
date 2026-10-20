# Called when player dies
scoreboard players set @s hh_deaths 0

# Ensure player scores and constants are valid
function half_heart:player_check_init

# Tag player so that health reduction is applied upon respawn
tag @s add hh_dead

# Calculate remaining percentage: 100 - #death_loss_percent
scoreboard players operation #remaining_pct hh_temp = #c100 hh_values
scoreboard players operation #remaining_pct hh_temp -= #death_loss_percent hh_values
execute if score #remaining_pct hh_temp matches ..-1 run scoreboard players set #remaining_pct hh_temp 0
execute if score #remaining_pct hh_temp matches 101.. run scoreboard players set #remaining_pct hh_temp 100

# Reduce current health with ceiling division: (hh_current_hp * remaining_pct + 99) / 100
# For default 50%: 20 -> 10, 10 -> 5, 5 -> 3, 3 -> 2, 2 -> 1, 1 -> 1
scoreboard players operation #calc hh_temp = @s hh_current_hp
scoreboard players operation #calc hh_temp *= #remaining_pct hh_temp
scoreboard players add #calc hh_temp 99
scoreboard players operation #calc hh_temp /= #c100 hh_values
scoreboard players operation @s hh_current_hp = #calc hh_temp

# Clamp current HP to not drop below #min_hp (default: 1 HP)
execute if score @s hh_current_hp < #min_hp hh_values run scoreboard players operation @s hh_current_hp = #min_hp hh_values

# Reduce maximum health capacity with ceiling division: (hh_max_hp * remaining_pct + 99) / 100
# Shards in the lost percentage are permanently lost on death
# Shards in the surviving percentage remain in effect
scoreboard players operation #calc hh_temp = @s hh_max_hp
scoreboard players operation #calc hh_temp *= #remaining_pct hh_temp
scoreboard players add #calc hh_temp 99
scoreboard players operation #calc hh_temp /= #c100 hh_values
scoreboard players operation @s hh_max_hp = #calc hh_temp

# Max health capacity cannot drop below base health (hh_base_hp, default: 20 HP)
execute if score @s hh_max_hp < @s hh_base_hp run scoreboard players operation @s hh_max_hp = @s hh_base_hp

# Ensure current HP does not exceed max HP
execute if score @s hh_current_hp > @s hh_max_hp run scoreboard players operation @s hh_current_hp = @s hh_max_hp

# Try applying immediately in case game allows it
function half_heart:apply_health

# Send localized death message to player
function half_heart:lang/msg_died
