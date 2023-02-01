
setblock ~ 0 ~ shulker_box{Items: [{Count: 1, id: "stone", tag: {CngAmmoNBT: {ID: "Default"}}}]}
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s Inventory[{Slot: 18b}].tag.CngAmmoNBT store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: 18b}].tag.CngAmmoNBT.ID
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: 18b}].tag
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot: 18b}].Count
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: 18b}].id
execute if score @s cng.istrueammo matches 0 store result score @s cng.ammocount run data get block ~ 0 ~ Items[0].Count
execute store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
scoreboard players operation @s cng.needammo = @s cng.maxammo
scoreboard players operation @s cng.needammo -= @s cng.haveammo
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: 18b}].tag.CngAmmoNBT if score @s cng.ammocount < @s cng.needammo run tag @s add cng.ammocountR0
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: 18b}].tag.CngAmmoNBT if score @s cng.ammocount >= @s cng.needammo run tag @s add cng.ammocountR1
execute if entity @s[tag=cng.ammocountR1] store result block ~ 0 ~ Items[0].Count int 1 run scoreboard players operation @s cng.ammocount -= @s cng.needammo
execute if entity @s[tag=cng.ammocountR1] run item replace entity @s container.18 from block ~ 0 ~ container.0
execute if entity @s[tag=cng.ammocountR1] run function cng:_private/events/player/reload/loading1
execute if entity @s[tag=cng.ammocountR0] run scoreboard players operation @s cng.ammocount += @s cng.haveammo
execute if entity @s[tag=cng.ammocountR0] run item replace entity @s container.18 with air
execute if entity @s[tag=cng.ammocountR0] run function cng:_private/events/player/reload/loading2
tag @s remove cng.istrueammo
tag @s remove cng.ammocountR0
tag @s remove cng.ammocountR1
tag @s remove cng.nohaveammo

setblock ~ 0 ~ bedrock
    