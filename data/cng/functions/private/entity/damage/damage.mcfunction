execute store result score @s cngs.021 run data get entity @s ActiveEffects[{Id: 19b}].Duration 100
scoreboard players remove @s cngs.021 100

function #cng:entity/damage_get_before

# 扣血
execute if entity @s[type=player] run scoreboard players operation $value damage.value = @s cngs.021
execute if entity @s[type=player] run function damage:player
execute if entity @s[type=!player] run scoreboard players operation $value damage.value = @s cngs.021
execute if entity @s[type=!player] run function damage:entity

function #cng:entity/damage_get_after

tag @s remove cngt.be_hit