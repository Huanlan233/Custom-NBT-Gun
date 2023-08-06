execute store result score @s cngs.010 run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y 100
execute store result score @s cngs.011 run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y_Offset 100
execute store result score @s cngs.009 run data get entity @s Rotation[1] 100

summon minecraft:marker ~ ~ ~ {Tags: ["cngt.recoil"]}
data modify entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] Rotation set from entity @s Rotation

# 随机数，确定偏移度正负
scoreboard objectives add cng.temp1 dummy

execute store result score @s cng.temp1 run data get entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] UUID[2]
scoreboard players operation @s cng.temp1 %= #2 cngs.001
scoreboard players remove @s cng.temp1 1
execute if score @s cng.temp1 matches -1 run scoreboard players operation @s cngs.011 *= #-1 cngs.001

scoreboard players operation @s cngs.010 -= @s cngs.009
scoreboard players operation @s cngs.010 *= #-1 cngs.001
scoreboard players operation @s cngs.010 += @s cngs.011
execute store result entity @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] Rotation[1] float 0.01 run scoreboard players get @s cngs.010

scoreboard objectives remove cng.temp1

execute rotated as @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil] run tp @s ~ ~ ~ ~ ~

kill @e[limit=1,type=marker,sort=nearest,tag=cngt.recoil]