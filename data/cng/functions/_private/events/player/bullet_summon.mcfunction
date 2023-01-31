# 获取弹匣内子弹数量
execute if data entity @s SelectedItem.tag.CngNBT.AmmoID store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
execute if score @s cng.haveammo matches 1.. run tag @s add cng.haveammo
# 召唤箭矢
execute if entity @s[tag=cng.haveammo] positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.1 {Tags: ["cng.bullet_not_fired"], damage: 0.0001d, CustomPotionEffects: [{Id: 24b, Amplifier: 1b, Duration: 0}, {Id: 20b, Amplifier: 0b, Duration: 10}]}
execute unless data entity @s SelectedItem.tag.CngNBT.AmmoID positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.1 {Tags: ["cng.bullet_not_fired"], damage: 0.0001d, CustomPotionEffects: [{Id: 24b, Amplifier: 1b, Duration: 0}, {Id: 20b, Amplifier: 0b, Duration: 10}]}
# 弹匣内子弹数量减一
execute if entity @s[tag=cng.haveammo] run setblock ~ 0 ~ shulker_box{Items: [{id: "carrot_on_a_stick", Count: 1b}]}
data modify block ~ 0 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 0 ~ Items[0].tag set from entity @s SelectedItem.tag
data modify block ~ 0 ~ Items[0].Count set from entity @s SelectedItem.Count
execute store result block ~ 0 ~ Items[0].tag.CngNBT.HaveAmmo byte 1 run scoreboard players operation @s cng.haveammo -= #1 cng.constant
item replace entity @s weapon.mainhand from block ~ 0 ~ container.0

setblock ~ 0 ~ bedrock
scoreboard players reset @s cng.haveammo
tag @s remove cng.haveammo