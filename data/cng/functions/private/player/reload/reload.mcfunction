# F换弹
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

# 装弹冷却
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
execute store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute unless score @s cng.haveammo = @s cng.maxammo store result score @s cng.cooldown run data get entity @s SelectedItem.tag.CngNBT.LoadingTime

function #cng:player/reload_slot

tag @a[tag=cng.reloading] remove cng.reloading