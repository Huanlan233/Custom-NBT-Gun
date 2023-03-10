execute store result score @s cng.y_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y 100
execute store result score @s cng.yo_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y_Offset 100
execute store result score @s cng.roty run data get entity @s Rotation[1] 100

summon minecraft:marker ~ ~ ~ {Tags: ["cng.recoil"]}
data modify entity @e[limit=1,type=marker,sort=nearest,tag=cng.recoil] Rotation set from entity @s Rotation

# 随机数，确定偏移度正负
scoreboard objectives add cng.temp1 dummy

execute store result score @s cng.temp1 run data get entity @e[limit=1,type=marker,sort=nearest,tag=cng.recoil] UUID[2]
scoreboard players operation @s cng.temp1 %= #2 cng.constant
scoreboard players remove @s cng.temp1 1
execute if score @s cng.temp1 matches -1 run scoreboard players operation @s cng.yo_recoil *= #-1 cng.constant

scoreboard players operation @s cng.y_recoil -= @s cng.roty
scoreboard players operation @s cng.y_recoil *= #-1 cng.constant
scoreboard players operation @s cng.y_recoil += @s cng.yo_recoil
execute store result entity @e[limit=1,type=marker,sort=nearest,tag=cng.recoil] Rotation[1] float 0.01 run scoreboard players get @s cng.y_recoil

scoreboard objectives remove cng.temp1

execute rotated as @e[limit=1,type=marker,sort=nearest,tag=cng.recoil] run tp @s ~ ~ ~ ~ ~

kill @e[limit=1,type=marker,sort=nearest,tag=cng.recoil]