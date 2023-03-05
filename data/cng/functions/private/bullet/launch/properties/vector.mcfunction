execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s cng.vecx
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s cng.vecy -= @s cng.drop
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s cng.vecz