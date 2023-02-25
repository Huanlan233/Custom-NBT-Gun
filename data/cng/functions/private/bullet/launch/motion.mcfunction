# 动量
execute as @e store result score @s cng.posx run data get entity @s Pos[0] 10000
execute as @e store result score @s cng.posy run data get entity @s Pos[1] 10000
execute as @e store result score @s cng.posz run data get entity @s Pos[2] 10000

execute store result score @s cng.vecx run scoreboard players operation @s cng.posx -= @a[distance=..2.5,limit=1,sort=nearest] cng.posx
execute store result score @s cng.vecy run scoreboard players operation @s cng.posy -= @a[distance=..2.5,limit=1,sort=nearest] cng.posy
execute store result score @s cng.vecz run scoreboard players operation @s cng.posz -= @a[distance=..2.5,limit=1,sort=nearest] cng.posz

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s cng.vecx
execute store result entity @s Motion[1] double 0.01 run scoreboard players remove @s cng.vecy 16250
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s cng.vecz

tag @s add cng.bullet
tag @s remove cng.bullet_not_fired