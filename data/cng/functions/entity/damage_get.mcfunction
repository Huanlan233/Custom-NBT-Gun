# 检测被击中的人
execute as @e[scores={cng.hurttime=1..}] store success score @s cng.be_hit run effect clear @s invisibility
execute as @e[scores={cng.be_hit=1..}] run tag @s add cng.be_hit
execute as @e[tag=cng.be_hit] store result score @s cng.get_damage run data get entity @s ActiveEffects[{Id:1b}].Duration 100

# 中弹自定义事件
execute as @e[tag=cng.be_hit] at @s run function #cng:damage_get

# 扣血，此处使用Custom Damage
# Player
execute as @e[tag=cng.be_hit,type=player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute as @e[tag=cng.be_hit,type=player] run execute as @s run function damage:player
# Entity
execute as @e[tag=cng.be_hit,type=!player] run scoreboard players operation $value damage.value = @s cng.get_damage
execute as @e[tag=cng.be_hit,type=!player] run execute as @s run function damage:entity