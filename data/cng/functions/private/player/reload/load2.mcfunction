# surplus<0
data modify block ~ 0 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 0 ~ Items[0].tag set from entity @s SelectedItem.tag
data modify block ~ 0 ~ Items[0].Count set from entity @s SelectedItem.Count
execute store result block ~ 0 ~ Items[0].tag.CngNBT.HaveAmmo int 1 run scoreboard players get @s cngs.014
item replace entity @s weapon.mainhand from block ~ 0 ~ container.0