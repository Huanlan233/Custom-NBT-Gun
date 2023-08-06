execute as @e store result score @s cngs.002 run data get entity @s Pos[0] 10000
execute as @e store result score @s cngs.003 run data get entity @s Pos[1] 10000
execute as @e store result score @s cngs.004 run data get entity @s Pos[2] 10000

execute store result score @s cngs.005 run scoreboard players operation @s cngs.002 -= @a[limit=1,sort=nearest] cngs.002
execute store result score @s cngs.006 run scoreboard players operation @s cngs.003 -= @a[limit=1,sort=nearest] cngs.003
execute store result score @s cngs.007 run scoreboard players operation @s cngs.004 -= @a[limit=1,sort=nearest] cngs.004

scoreboard players remove @s cngs.006 16200
scoreboard players operation @s cngs.005 *= #100 cngs.001
scoreboard players operation @s cngs.006 *= #100 cngs.001
scoreboard players operation @s cngs.007 *= #100 cngs.001