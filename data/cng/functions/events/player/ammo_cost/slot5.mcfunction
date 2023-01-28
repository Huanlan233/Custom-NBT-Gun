data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot:5b}].tag
data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot:5b}].id
data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot:5b}].Count
execute store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.id set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:5b}].tag.CngAmmoNBT.id store result score @s cng.ammocount run data get entity @s Inventory[{Slot:5b}].Count
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=2..}] Inventory[{Slot:5b}].tag.CngAmmoNBT.id store result block ~ 0 ~ Items[0].Count byte 1 run scoreboard players operation @s cng.ammocount -= #1 cng.constant
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:5b}].tag.CngAmmoNBT.id run item replace entity @s container.5 from block ~ 0 ~ container.0
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=1}] Inventory[{Slot:5b}].tag.CngAmmoNBT.id run item replace entity @s container.0 with air
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:5b}].tag.CngAmmoNBT.id run tag @s remove cng.ammocost