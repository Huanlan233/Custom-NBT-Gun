# 动量
execute as @e store result score @s cng.posx run data get entity @s Pos[0] 10000
execute as @e store result score @s cng.posy run data get entity @s Pos[1] 10000
execute as @e store result score @s cng.posz run data get entity @s Pos[2] 10000

execute store result score @s cng.vecx run scoreboard players operation @s cng.posx -= @a[limit=1,sort=nearest] cng.posx
execute store result score @s cng.vecy run scoreboard players operation @s cng.posy -= @a[limit=1,sort=nearest] cng.posy
execute store result score @s cng.vecz run scoreboard players operation @s cng.posz -= @a[limit=1,sort=nearest] cng.posz

scoreboard players remove @s cng.vecy 16200
scoreboard players operation @s cng.vecx *= #100 cng.constant
scoreboard players operation @s cng.vecy *= #100 cng.constant
scoreboard players operation @s cng.vecz *= #100 cng.constant