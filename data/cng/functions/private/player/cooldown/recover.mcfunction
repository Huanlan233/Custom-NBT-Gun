execute unless score @s cng.cooldown = @s cng.cooldown run scoreboard players set @s cng.cooldown 0
execute if score @s cng.cooldown matches 1.. run tag @s add cng.cooldown
execute if score @s cng.cooldown matches 1.. run scoreboard players remove @s cng.cooldown 1
execute if score @s cng.cooldown matches 0 run tag @s remove cng.cooldown