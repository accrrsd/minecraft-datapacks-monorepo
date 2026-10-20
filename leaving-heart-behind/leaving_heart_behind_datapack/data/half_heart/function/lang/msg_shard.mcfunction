# Sends "You consumed a heart shard! Max health increased by +#shard_hp HP" in the player's language
# 1 = Russian (Русский)
execute if score @s hh_lang matches 1 run tellraw @s [{"text":"[Half Heart] ","color":"gold","bold":true},{"text":"Вы поглотили осколок сердца! Ваш максимум здоровья увеличен на +","color":"yellow"},{"score":{"name":"#shard_hp","objective":"hh_values"},"color":"green","bold":true},{"text":" HP!","color":"yellow"}]

# 2 = English
execute if score @s hh_lang matches 2 run tellraw @s [{"text":"[Half Heart] ","color":"gold","bold":true},{"text":"You consumed a heart shard! Your maximum health increased by +","color":"yellow"},{"score":{"name":"#shard_hp","objective":"hh_values"},"color":"green","bold":true},{"text":" HP!","color":"yellow"}]

# 3 = Spanish (Español)
execute if score @s hh_lang matches 3 run tellraw @s [{"text":"[Half Heart] ","color":"gold","bold":true},{"text":"¡Has consumido un fragmento de corazón! ¡Tu salud máxima aumentó en +","color":"yellow"},{"score":{"name":"#shard_hp","objective":"hh_values"},"color":"green","bold":true},{"text":" HP!","color":"yellow"}]

# 4 = Chinese Simplified (简体中文)
execute if score @s hh_lang matches 4 run tellraw @s [{"text":"[Half Heart] ","color":"gold","bold":true},{"text":"你使用了心之碎片！你的最大生命值增加了 +","color":"yellow"},{"score":{"name":"#shard_hp","objective":"hh_values"},"color":"green","bold":true},{"text":" HP！","color":"yellow"}]

# 5 = German (Deutsch)
execute if score @s hh_lang matches 5 run tellraw @s [{"text":"[Half Heart] ","color":"gold","bold":true},{"text":"Du hast einen Herzsplitter verzehrt! Deine maximale Gesundheit wurde um +","color":"yellow"},{"score":{"name":"#shard_hp","objective":"hh_values"},"color":"green","bold":true},{"text":" HP erhöht!","color":"yellow"}]
