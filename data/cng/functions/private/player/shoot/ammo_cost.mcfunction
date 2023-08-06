# 子弹消耗
execute store result score @s cngs.017 run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo

setblock ~ 0 ~ shulker_box{Items: [{id: "carrot_on_a_stick", Count: 1b}]}

data modify block ~ 0 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 0 ~ Items[0].tag set from entity @s SelectedItem.tag
data modify block ~ 0 ~ Items[0].Count set from entity @s SelectedItem.Count

execute store result block ~ 0 ~ Items[0].tag.CngNBT.HaveAmmo int 1 run scoreboard players remove @s cngs.017 1

item replace entity @s weapon.mainhand from block ~ 0 ~ container.0

setblock ~ 0 ~ bedrock