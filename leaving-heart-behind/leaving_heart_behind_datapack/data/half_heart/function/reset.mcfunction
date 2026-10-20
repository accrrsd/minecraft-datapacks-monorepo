# Admin Reset Command: /function half_heart:reset
# Cleans up all datapack data, restores player health to base, and removes all scoreboards.
# Safe to run before uninstalling or disabling the datapack.

# 1. Reset all online players back to initial base health
execute as @a run function half_heart:reset_player

# 2. Clear temporary macro storage
data remove storage half_heart:temp val

# 3. Remove all datapack scoreboard objectives
scoreboard objectives remove hh_deaths
scoreboard objectives remove hh_time_since_death
scoreboard objectives remove hh_used_potion
scoreboard objectives remove hh_used_shard
scoreboard objectives remove hh_base_hp
scoreboard objectives remove hh_current_hp
scoreboard objectives remove hh_max_hp
scoreboard objectives remove hh_values
scoreboard objectives remove hh_temp
scoreboard objectives remove hh_lang
scoreboard objectives remove hh_select_lang

# 4. Broadcast confirmation message to chat
tellraw @a [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"Datapack data has been reset! All players' health restored to base. / Данные датапака сброшены, здоровье игроков возвращено к исходному.","color":"green"}]
