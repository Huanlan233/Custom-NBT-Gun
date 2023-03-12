execute store result score @s cng.damage run data get entity @s ActiveEffects[{Id: 19b}].Duration 10
scoreboard players remove @s cng.damage 100

function #cng:entity/damage_get_before

# 扣血
execute if entity @s[type=player] run scoreboard players operation $value damage.value = @s cng.damage
execute if entity @s[type=player] run function damage:player
execute if entity @s[type=!player] run scoreboard players operation $value damage.value = @s cng.damage
execute if entity @s[type=!player] run function damage:entity

function #cng:entity/damage_get_after

tag @s remove cng.be_hit