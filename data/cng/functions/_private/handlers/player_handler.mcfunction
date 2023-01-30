# 检测玩家是否使用枪
execute as @a store result score @s cng.isgun run data get entity @s SelectedItem.tag.CngNBT
execute as @a[scores={cng.used=1..}] if score @s cng.isgun matches 1.. run tag @s add cng.gun_used

# F换弹
execute as @a if data entity @s Inventory[{Slot:-106b}].tag.CngNBT run tag @s add cng.reloading
execute as @a[tag=cng.reloading] run function cng:_private/events/player/reload
# TODO: Q换弹

# 后坐力
execute as @a[tag=cng.gun_used] at @s run function cng:_private/events/player/recoil

# 召唤子弹
execute as @a[tag=cng.gun_used] at @s run function cng:_private/events/player/bullet_summon