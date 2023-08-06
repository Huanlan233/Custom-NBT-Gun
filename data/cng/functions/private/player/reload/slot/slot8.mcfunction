
setblock ~ 0 ~ shulker_box{Items: [{Count: 1, id: "stone", tag: {CngAmmoNBT: {ID: "Default"}}}]}
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s Inventory[{Slot: 8b}].tag.CngAmmoNBT store success score @s cngs.018 run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: 8b}].tag.CngAmmoNBT.ID
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: 8b}].tag
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot: 8b}].Count
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: 8b}].id
execute if score @s cngs.018 matches 0 store result score @s cngs.014 run data get block ~ 0 ~ Items[0].Count
execute store result score @s cngs.016 run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute store result score @s cngs.017 run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
scoreboard players operation @s cngs.015 = @s cngs.016
scoreboard players operation @s cngs.015 -= @s cngs.017
execute if score @s cngs.018 matches 0 if data entity @s Inventory[{Slot: 8b}].tag.CngAmmoNBT if score @s cngs.014 < @s cngs.015 run tag @s add cngt.ammocountR0
execute if score @s cngs.018 matches 0 if data entity @s Inventory[{Slot: 8b}].tag.CngAmmoNBT if score @s cngs.014 >= @s cngs.015 run tag @s add cngt.ammocountR1
execute if entity @s[tag=cngt.ammocountR1] store result block ~ 0 ~ Items[0].Count int 1 run scoreboard players operation @s cngs.014 -= @s cngs.015
execute if entity @s[tag=cngt.ammocountR1] run item replace entity @s container.8 from block ~ 0 ~ container.0
execute if entity @s[tag=cngt.ammocountR1] run function cng:private/player/reload/load1
execute if entity @s[tag=cngt.ammocountR0] run scoreboard players operation @s cngs.014 += @s cngs.017
execute if entity @s[tag=cngt.ammocountR0] run item replace entity @s container.8 with air
execute if entity @s[tag=cngt.ammocountR0] run function cng:private/player/reload/load2
tag @s remove cngt.istrueammo
tag @s remove cngt.ammocountR0
tag @s remove cngt.ammocountR1
tag @s remove cngt.nohaveammo

setblock ~ 0 ~ bedrock
    