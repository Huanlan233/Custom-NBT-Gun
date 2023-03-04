# 设置伤害
execute store result entity @s CustomPotionEffects[{Id: 19b}].Duration int 1 run data get entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.Damage