# Item
# 检测是否为枪，如果CngNBT对象存在则返回true(1..)，反之则为false(0)
execute as @a store result score @s cng.isgun run data get entity @s SelectedItem.tag.CngNBT

# Entity
# 受伤时间
execute as @e store result score @s cng.hurttime run data get entity @s HurtTime