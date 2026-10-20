# Checks and ensures player and server have all required scoreboard values initialized
# Config fallbacks & constants
execute unless score #c2 hh_values matches 2 run scoreboard players set #c2 hh_values 2
execute unless score #c100 hh_values matches 100 run scoreboard players set #c100 hh_values 100
execute unless score #c99 hh_values matches 99 run scoreboard players set #c99 hh_values 99
execute unless score #shard_hp hh_values matches 1.. run scoreboard players set #shard_hp hh_values 2
execute unless score #potion_max_hp hh_values matches 0.. run scoreboard players set #potion_max_hp hh_values 10
execute unless score #death_loss_percent hh_values matches 0..100 run scoreboard players set #death_loss_percent hh_values 50

# 1. Base HP (e.g. 20, or origins/modded health)
execute unless score @s hh_base_hp matches 1.. store result score @s hh_base_hp run attribute @s minecraft:max_health base get 1
execute unless score @s hh_base_hp matches 1.. run scoreboard players operation @s hh_base_hp = #default_base_hp hh_values

# 2. Max HP capacity (at least base_hp)
execute unless score @s hh_max_hp matches 1.. run scoreboard players operation @s hh_max_hp = @s hh_base_hp
execute if score @s hh_max_hp < @s hh_base_hp run scoreboard players operation @s hh_max_hp = @s hh_base_hp

# 3. Current HP (at least min_hp, at most max_hp)
execute unless score @s hh_current_hp matches 1.. run scoreboard players operation @s hh_current_hp = @s hh_max_hp
execute if score @s hh_current_hp > @s hh_max_hp run scoreboard players operation @s hh_current_hp = @s hh_max_hp

# 4. Language preference
execute unless score @s hh_lang matches 1..5 run scoreboard players operation @s hh_lang = #server_lang hh_values

# 5. Enable language trigger
scoreboard players enable @s hh_select_lang

# 6. Mark player as initialized
tag @s add hh_initialized
