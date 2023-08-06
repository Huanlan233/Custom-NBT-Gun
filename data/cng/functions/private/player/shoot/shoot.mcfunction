# 检测玩家是否使用枪
execute store result score @s cngs.017 run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo

execute if score @s cngs.017 matches 1.. run tag @s add cngt.shoot
execute unless data entity @s SelectedItem.tag.CngNBT.MaxAmmo run tag @s add cngt.shoot

function #cng:player/shoot

# 射击冷却
execute store result score @s cngs.019 run data get entity @s SelectedItem.tag.CngNBT.FiringInterval