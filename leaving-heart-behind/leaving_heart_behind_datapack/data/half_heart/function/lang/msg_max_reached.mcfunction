# Sends "Server maximum health limit reached!" in the player's language
# 1 = Russian (Русский)
execute if score @s hh_lang matches 1 run tellraw @s [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"Достигнут абсолютный максимум здоровья сервера!","color":"gold"}]

# 2 = English
execute if score @s hh_lang matches 2 run tellraw @s [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"Server maximum health limit reached!","color":"gold"}]

# 3 = Spanish (Español)
execute if score @s hh_lang matches 3 run tellraw @s [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"¡Se ha alcanzado el límite máximo de salud del servidor!","color":"gold"}]

# 4 = Chinese Simplified (简体中文)
execute if score @s hh_lang matches 4 run tellraw @s [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"已达到服务器最大生命值上限！","color":"gold"}]

# 5 = German (Deutsch)
execute if score @s hh_lang matches 5 run tellraw @s [{"text":"[Half Heart] ","color":"red","bold":true},{"text":"Das maximale Gesundheitslimit des Servers wurde erreicht!","color":"gold"}]
