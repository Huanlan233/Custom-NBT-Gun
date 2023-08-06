# surplus>=0
setblock ~ 0 ~ bedrock
setblock ~ 0 ~ shulker_box{Items: [{Slot: 0b, id: "carrot_on_a_stick", Count: 1, tag: {}}]}
data modify block ~ 0 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 0 ~ Items[0].tag set from entity @s SelectedItem.tag
data modify block ~ 0 ~ Items[0].Count set from entity @s SelectedItem.Count
execute store result block ~ 0 ~ Items[0].tag.CngNBT.HaveAmmo int 1 run scoreboard players get @s cngs.016
item replace entity @s weapon.mainhand from block ~ 0 ~ container.0