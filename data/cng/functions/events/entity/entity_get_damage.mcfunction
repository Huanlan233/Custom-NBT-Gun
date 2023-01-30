# 受伤时间
execute as @e store result score @s cng.hurttime run data get entity @s HurtTime

execute store result score @s cng.get_damage run data get entity @s ActiveEffects[{Id:1b}].Duration 100

# 中弹自定义事件
execute at @s run function #cng:damage_get

# 扣血，此处使用Custom Damage
# Player
execute if entity @s[type=player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=player] run execute as @s run function damage:player
# Entity
execute if entity @s[type=!player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute if entity @s[type=!player] run execute as @s run function damage:entity