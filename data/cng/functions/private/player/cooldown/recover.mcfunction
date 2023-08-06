execute unless score @s cngs.019 = @s cngs.019 run scoreboard players set @s cngs.019 0
execute if score @s cngs.019 matches 1.. run tag @s add cngt.cooldown
execute if score @s cngs.019 matches 1.. run scoreboard players remove @s cngs.019 1
execute if score @s cngs.019 matches 0 run tag @s remove cngt.cooldown