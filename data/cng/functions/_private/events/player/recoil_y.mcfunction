#alias entity RecoilMarker @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil]

execute store result score @s cng.y_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y 10
execute store result score @s cng.yo_recoil run data get entity @s SelectedItem.tag.CngNBT.Recoil.Y_Offset 10
execute store result score @s cng.roty run data get entity @s Rotation[1] 100

summon minecraft:armor_stand ~ ~ ~ {Marker: 1b, Invisible: 0b, Small: 0b, Tags: ["cng.recoil"]}
data modify entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] Rotation set from entity @s Rotation

# 随机数，确定偏移度正负
execute store result score @s cng.random run data get entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] UUID[2]
scoreboard players operation @s cng.random %= #2 cng.constant
scoreboard players operation @s cng.random -= #1 cng.constant
execute if score @s cng.random matches -1 run scoreboard players operation @s cng.yo_recoil *= #-1 cng.constant

scoreboard players operation @s cng.y_recoil -= @s cng.roty
scoreboard players operation @s cng.y_recoil *= #-1 cng.constant
scoreboard players operation @s cng.y_recoil += @s cng.yo_recoil
execute store result entity @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] Rotation[1] float 0.01 run scoreboard players get @s cng.y_recoil

execute rotated as @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil] run tp @s ~ ~ ~ ~ ~

kill @e[limit=1,type=armor_stand,sort=nearest,tag=cng.recoil]