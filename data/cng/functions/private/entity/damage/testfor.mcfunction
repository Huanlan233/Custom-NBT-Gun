# 中弹检测
execute store result score @s cng.hurttime run data get entity @s HurtTime
execute if entity @s[scores={cng.hurttime=1..},nbt={ActiveEffects: [{Id: 19b}]}] store success score @s cng.be_hit run effect clear @s glowing
execute if entity @e[scores={cng.be_hit=1..}] run tag @s add cng.be_hit