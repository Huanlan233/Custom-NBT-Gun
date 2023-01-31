execute store result score @s cng.get_damage run data get entity @s ActiveEffects[{Id: 20b}].Duration 100
scoreboard players operation @s cng.get_damage -= #100 cng.constant
# 中弹自定义事件
execute at @s run function #cng:damage_get
# 扣血
# 扣血 - 玩家
execute if entity @s[type=player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=player] run execute as @s run function damage:player
# 扣血 - 实体
execute if entity @s[type=!player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=!player] run execute as @s run function damage:entity