# Initialize scoreboards
scoreboard objectives add hh_deaths deathCount
scoreboard objectives add hh_time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add hh_used_potion minecraft.used:minecraft.potion
scoreboard objectives add hh_used_shard minecraft.used:minecraft.potion
scoreboard objectives add hh_base_hp dummy
scoreboard objectives add hh_current_hp dummy
scoreboard objectives add hh_max_hp dummy
scoreboard objectives add hh_values dummy
scoreboard objectives add hh_temp dummy
scoreboard objectives add hh_lang dummy
scoreboard objectives add hh_select_lang trigger

# Constant values
scoreboard players set #c2 hh_values 2
scoreboard players set #c100 hh_values 100
scoreboard players set #c99 hh_values 99

# Load configuration settings (defaults or admin-configured values)
function half_heart:config

# Revoke consumption advancements to prevent any stuck state
advancement revoke @a only half_heart:use_shard
advancement revoke @a only half_heart:use_potion

# Initialize and validate scores for all online players
execute as @a run function half_heart:player_check_init

# Welcome / load message to administrators
tellraw @a[tag=hh_admin] [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"Datapack successfully loaded! / Датапак успешно загружен!","color":"green"}]
