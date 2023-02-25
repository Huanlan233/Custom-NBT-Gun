# 设置Owner
data modify entity @s Owner set from entity @a[limit=1,distance=..2.5,sort=nearest] UUID

# 设置伤害
execute store result entity @s CustomPotionEffects[{Id: 19b}].Duration int 1 run data get entity @a[limit=1,distance=..2.5,sort=nearest] SelectedItem.tag.CngNBT.Damage