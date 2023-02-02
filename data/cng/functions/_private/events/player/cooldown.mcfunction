execute if score @s cng.cooldown matches 1.. run tag @s add cng.cooldown
execute unless score @s cng.cooldown = @s cng.cooldown run scoreboard players set @s cng.cooldown 0
execute if score @s cng.cooldown matches 1.. run scoreboard players operation @s cng.cooldown -= #1 cng.constant
execute if score @s cng.cooldown matches 0 run tag @s remove cng.cooldown