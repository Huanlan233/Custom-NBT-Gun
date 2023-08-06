# 中弹检测
execute store result score @s cngs.023 run data get entity @s HurtTime
execute if entity @s[scores={cngs.023=1..},nbt={ActiveEffects: [{Id: 19b}]}] store success score @s cngs.022 run effect clear @s glowing
execute if entity @e[scores={cngs.022=1..}] run tag @s add cngt.be_hit