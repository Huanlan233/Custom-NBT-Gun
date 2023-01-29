setblock ~ 0 ~ shulker_box{Items:[{id:"iron_nugget",Count:1,tag:{CngAmmoNBT:{ID:"Default"},display:{Name:'{"text": "Default"}'}}}]}

# 遍历背包
tag @s add cng.ammocost
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot-106
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot0
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot1
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot2
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot3
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot4
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot5
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot6
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot7
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot8
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot9
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot10
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot11
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot12
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot13
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot14
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot15
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot16
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot17
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot18
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot19
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot20
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot21
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot22
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot23
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot24
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot25
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot26
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot27
# 重置
scoreboard players reset @s cng.ammocount
execute if score @s cng.istrueammo matches 1.. run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute at @s run setblock ~ 0 ~ bedrock
