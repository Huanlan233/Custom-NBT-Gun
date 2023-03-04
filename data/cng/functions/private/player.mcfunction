# 射击
execute as @a[tag=!cng.cooldown] if data entity @s SelectedItem.tag.CngNBT if entity @a[scores={cng.used=1..}] run function cng:private/player/shoot/shoot

# 子弹生成
execute as @a[tag=cng.shoot] at @s anchored eyes run function cng:private/player/shoot/bullet_summon

# 后坐力
execute as @a[tag=cng.shoot] at @s if data entity @s SelectedItem.tag.CngNBT.Recoil.X run function cng:private/player/recoil/x
execute as @a[tag=cng.shoot] at @s if data entity @s SelectedItem.tag.CngNBT.Recoil.Y run function cng:private/player/recoil/y

# 弹药消耗
execute as @a[tag=cng.shoot] at @s if data entity @s SelectedItem.tag.CngNBT.MaxAmmo run function cng:private/player/shoot/ammo_cost

# 换弹
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.CngNBT run tag @s add cng.reloading
execute as @a[tag=cng.reloading,tag=!cooldown] at @s run function cng:private/player/reload/reload

# 冷却恢复
execute as @a run function cng:private/player/cooldown/recover