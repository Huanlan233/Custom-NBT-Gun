# 检测玩家是否使用枪
execute as @a store result score @s cng.isgun run data get entity @s SelectedItem.tag.CngNBT
execute as @a[scores={cng.used=1..}] if score @s cng.isgun matches 1.. run tag @s add cng.gun_used

# F换弹
execute as @a if data entity @s Inventory[{Slot:-106b}].tag.CngNBT run tag @s add cng.reloading
execute as @a[tag=cng.reloading] run function cng:_private/events/player/reload
# TODO: Q换弹

# 召唤子弹
execute as @a[tag=cng.gun_used] at @s run function cng:_private/events/player/bullet_summon

# 后坐力
# X是往上或者往下
# Y是水平 (去你的Mojang搞这么难记)
execute as @a[tag=cng.gun_used] if data entity @s SelectedItem.tag.CngNBT.MaxAmmo store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
execute as @a[tag=cng.gun_used] if score @s cng.haveammo matches 1.. run tag @s add cng.recoil
execute as @a[tag=cng.gun_used] unless data entity @s SelectedItem.tag.CngNBT.MaxAmmo run tag @s add cng.recoil
execute as @a[tag=cng.recoil] at @s if data entity @s SelectedItem.tag.CngNBT.Recoil.Y run function cng:_private/events/player/recoil_y
execute as @a[tag=cng.recoil] at @s if data entity @s SelectedItem.tag.CngNBT.Recoil.X run function cng:_private/events/player/recoil_x
tag @a[tag=cng.recoil] remove cng.recoil