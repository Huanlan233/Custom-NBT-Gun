data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot:12b}].tag
data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot:12b}].id
data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot:12b}].Count
execute store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:12b}].tag.CngAmmoNBT.ID store result score @s cng.ammocount run data get entity @s Inventory[{Slot:12b}].Count
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=2..}] Inventory[{Slot:12b}].tag.CngAmmoNBT.ID store result block ~ 0 ~ Items[0].Count byte 1 run scoreboard players operation @s cng.ammocount -= #1 cng.constant
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:12b}].tag.CngAmmoNBT.ID run item replace entity @s container.12 from block ~ 0 ~ container.0
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=1}] Inventory[{Slot:12b}].tag.CngAmmoNBT.ID run item replace entity @s container.0 with air
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:12b}].tag.CngAmmoNBT.ID run tag @s remove cng.ammocost