execute store result score @s cng.get_damage run data get entity @s ActiveEffects[{Id: 19b}].Duration 100
scoreboard players remove @s cng.get_damage 100

# 扣血
execute if entity @s[type=player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=player] run function damage:player
execute if entity @s[type=!player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=!player] run function damage:entity

tag @s remove cng.be_hit