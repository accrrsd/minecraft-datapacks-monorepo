# Called upon respawn (time_since_death >= 1)
tag @s remove hh_dead

# Ensure player scores are valid
function half_heart:player_check_init

# Apply calculated current health to player
function half_heart:apply_health
