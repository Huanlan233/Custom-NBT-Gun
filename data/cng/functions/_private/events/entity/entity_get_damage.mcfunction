execute store result score @s cng.get_damage run data get entity @s ActiveEffects[{Id: 19b}].Duration 100
execute if score @s cng.get_damage matches 200.. run scoreboard players operation @s cng.get_damage -= #100 cng.constant
# 中弹自定义事件
execute at @s run function #cng:damage_get_before
# 扣血
# 扣血 - 玩家
execute if entity @s[type=player,tag=cng.be_hit] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=player,tag=cng.be_hit] run function damage:player
# 扣血 - 实体
execute if entity @s[type=!player,tag=cng.be_hit] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=!player,tag=cng.be_hit] run function damage:entity

execute at @s run function #cng:damage_get_after

tag @s remove cng.be_hit