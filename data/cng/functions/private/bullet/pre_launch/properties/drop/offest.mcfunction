scoreboard objectives add cng.temp1 dummy
scoreboard objectives add cng.temp2 dummy

execute store result score @s cng.temp1 run data get entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.Drop.Offest
execute store result score @s cng.temp2 run data get entity @s UUID[3]

scoreboard players operation @s cng.temp2 %= @s cng.temp1

execute store result score @s cng.temp1 run data get entity @s UUID[0]

scoreboard players operation @s cng.temp1 %= #2 cng.constant

execute if score @s cng.temp1 matches 0 run scoreboard players operation @s cng.temp2 *= #-1 cng.constant

scoreboard players operation @s cng.drop += @s cng.temp2

scoreboard objectives remove cng.temp1
scoreboard objectives remove cng.temp2