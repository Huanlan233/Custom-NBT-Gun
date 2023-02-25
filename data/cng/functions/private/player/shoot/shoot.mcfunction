# 检测玩家是否使用枪
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo

execute if score @s cng.haveammo matches 1.. run tag @s add cng.shoot
execute unless data entity @s SelectedItem.tag.CngNBT.MaxAmmo run tag @s add cng.shoot

# 射击冷却
execute store result score @s cng.cooldown run data get entity @s SelectedItem.tag.CngNBT.FiringInterval