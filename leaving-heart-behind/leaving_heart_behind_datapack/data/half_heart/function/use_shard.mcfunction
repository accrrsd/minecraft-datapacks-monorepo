# Reset advancement for repeated consumption
advancement revoke @s only half_heart:use_shard

# Ensure player scores are valid and initialized
function half_heart:player_check_init

# Check if player hasn't reached server #max_hp limit
execute if score @s hh_max_hp < #max_hp hh_values run function half_heart:apply_shard_increase
execute if score @s hh_max_hp >= #max_hp hh_values run function half_heart:lang/msg_max_reached
