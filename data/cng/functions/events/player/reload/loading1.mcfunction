data modify block ~ 0 ~ Items[0] set from entity @s SelectedItem
execute store result block ~ 0 ~ Items[0].tag.CngNBT.HaveAmmo int 1 run scoreboard players get @s cng.maxammo
item replace entity @s weapon.mainhand from block ~ 0 ~ container.0