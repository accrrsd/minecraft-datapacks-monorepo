# Restore health attribute to original base health (hh_base_hp, fallback to 20 if unset)
execute unless score @s hh_base_hp matches 1.. run scoreboard players set @s hh_base_hp 20
execute store result storage half_heart:temp val double 1 run scoreboard players get @s hh_base_hp
function half_heart:set_hp/base_set_macro with storage half_heart:temp

# Instantly heal to fill newly restored hearts
effect give @s instant_health 1 0 true

# Remove all datapack tags
tag @s remove hh_initialized
tag @s remove hh_dead

# Revoke all custom advancements
advancement revoke @s only half_heart:use_shard
advancement revoke @s only half_heart:use_potion
