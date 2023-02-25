execute store result score @s cng.x_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.X 10
execute store result score @s cng.xo_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.X_Offset 10
execute store result score @s cng.rotx run data get entity @s Rotation[0] 100

summon minecraft:armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, Small: 0b, Tags: ["cng.recoil"]}
data modify entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] Rotation set from entity @s Rotation

# 随机数，确定偏移度正负
execute store result score @s cng.random run data get entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] UUID[3]
scoreboard players operation @s cng.random %= #2 cng.constant
scoreboard players remove @s cng.random 1
execute if score @s cng.random matches -1 run scoreboard players operation @s cng.xo_recoil *= #-1 cng.constant

scoreboard players operation @s cng.x_recoil -= @s cng.rotx
scoreboard players operation @s cng.x_recoil *= #-1 cng.constant
scoreboard players operation @s cng.x_recoil += @s cng.xo_recoil
execute store result entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] Rotation[0] float 0.01 run scoreboard players get @s cng.x_recoil

execute rotated as @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] run tp @s ~ ~ ~ ~ ~

kill @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil]