# 将ID、Tag、Count复制上去
data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag
data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot:-106b}].id
data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot:-106b}].Count
# 检测是否为正确的子弹，是则success返回0，不是则为1
execute store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:-106b}].tag.CngAmmoNBT.ID store result score @s cng.ammocount run data get entity @s Inventory[{Slot:-106b}].Count
# 如果子弹数量为1以上，则减少，否则会全部清除
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=2..}] Inventory[{Slot:-106b}].tag.CngAmmoNBT.ID store result block ~ 0 ~ Items[0].Count byte 1 run scoreboard players operation @s cng.ammocount -= #1 cng.constant
# 将其子弹消耗后的数量替换上去
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:-106b}].tag.CngAmmoNBT.ID run item replace entity @s weapon.offhand from block ~ 0 ~ container.0
# 如果子弹数量为1直接清除掉
execute if data entity @s[scores={cng.istrueammo=0,cng.ammocount=1}] Inventory[{Slot:-106b}].tag.CngAmmoNBT.ID run item replace entity @s weapon.offhand with air
#
execute if data entity @s[scores={cng.istrueammo=0}] Inventory[{Slot:-106b}].tag.CngAmmoNBT.ID run tag @s remove cng.ammocost