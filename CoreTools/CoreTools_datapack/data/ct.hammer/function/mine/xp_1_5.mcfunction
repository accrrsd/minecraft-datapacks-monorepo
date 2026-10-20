execute store result score #xp ct.dummy run random value 1..5
execute if score #xp ct.dummy matches 1.. run summon experience_orb ~ ~ ~ {Tags:["ct_xp"]}
execute if score #xp ct.dummy matches 1.. store result entity @e[type=experience_orb,tag=ct_xp,limit=1] Value short 1 run scoreboard players get #xp ct.dummy
tag @e[type=experience_orb,tag=ct_xp] remove ct_xp
