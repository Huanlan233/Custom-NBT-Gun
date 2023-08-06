execute store result score @s cngs.012 run data get entity @s SelectedItem.tag.CngNBT.Recoil.X 100
execute store result score @s cngs.013 run data get entity @s SelectedItem.tag.CngNBT.Recoil.X_Offset 100
execute store result score @s cngs.008 run data get entity @s Rotation[0] 100

summon minecraft:marker ~ ~ ~ {Tags: ["cngt.recoil"]}
data modify entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] Rotation set from entity @s Rotation

# 随机数，确定偏移度正负
scoreboard objectives add cng.temp1 dummy

execute store result score @s cng.temp1 run data get entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] UUID[3]
scoreboard players operation @s cng.temp1 %= #2 cngs.001
scoreboard players remove @s cng.temp1 1
execute if score @s cng.temp1 matches -1 run scoreboard players operation @s cngs.013 *= #-1 cngs.001

scoreboard players operation @s cngs.012 -= @s cngs.008
scoreboard players operation @s cngs.012 *= #-1 cngs.001
scoreboard players operation @s cngs.012 += @s cngs.013
execute store result entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] Rotation[0] float 0.01 run scoreboard players get @s cngs.012

scoreboard objectives remove cng.temp1

execute rotated as @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] run tp @s ~ ~ ~ ~ ~

kill @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil]