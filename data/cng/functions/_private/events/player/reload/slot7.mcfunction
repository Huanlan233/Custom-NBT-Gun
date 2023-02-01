
scoreboard players reset @s cng.ammocount2
execute as @a store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute as @a store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
scoreboard players operation @s cng.needammo = @s cng.maxammo
scoreboard players operation @s cng.needammo -= @s cng.haveammo

#
setblock ~ 0 ~ shulker_box{Items: [{Slot: 0b, id: "stone", Count: 1, tag: {CngAmmoNBT: {ID: "Default"}}}]}

#
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID

# data modify上去，如果返回0则为正确ID，返回1则为错误ID
execute if data entity @s Inventory[{Slot: 7b}].tag.CngAmmoNBT store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: 7b}].tag.CngAmmoNBT.ID

#
execute if score @s cng.istrueammo matches 1.. run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID

#

# #
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: 7b}].id
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: 7b}].tag

# #
execute if score @s cng.istrueammo matches 0 store result score @s cng.ammocount run data get entity @s Inventory[{Slot: 7b}].Count

# #
execute if score @s cng.istrueammo matches 0 run scoreboard players operation @s cng.surplusammo = @s cng.ammocount
execute if score @s cng.istrueammo matches 0 unless score @s cng.needammo2 matches 1.. run scoreboard players operation @s cng.surplusammo -= @s cng.needammo
execute if score @s cng.istrueammo matches 0 run scoreboard players operation @s cng.surplusammo -= @s cng.needammo2

# # #
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo >= #0 cng.constant store result block ~ 0 ~ Items[0].Count byte 1 run scoreboard players get @s cng.surplusammo
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo >= #0 cng.constant run item replace entity @s container.7 from block ~ 0 ~ container.0
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo >= #0 cng.constant run function cng:_private/events/player/reload/loading1

# # #
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant if data entity @s Inventory[{Slot: 7b}].tag.CngAmmoNBT store result score @s cng.ammocount2 run data get entity @s Inventory[{Slot: 7b}].Count
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant if data entity @s Inventory[{Slot: 7b}].tag.CngAmmoNBT store result score @s cng.needammo2 run data get entity @s Inventory[{Slot: 7b}].Count

execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant run scoreboard players operation @s cng.needammo2 -= @s cng.needammo
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant run scoreboard players operation @s cng.needammo2 *= #-1 cng.constant
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant run item replace entity @s container.7 with air
execute if score @s cng.istrueammo matches 0 if score @s cng.surplusammo < #0 cng.constant run function cng:_private/events/player/reload/loading2

execute as @s[scores={cng.istrueammo=0}] if score @s cng.istrueammo matches 0 if score @s cng.surplusammo matches 0.. run tag @s remove cng.v1
setblock ~ 0 ~ bedrock
    