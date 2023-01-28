setblock ~ 0 ~ shulker_box{Items:[{id:"iron_nugget",Count:1,tag:{CngAmmoNBT:{id:"Default"},display:{Name:'{"text": "Default"}'}}}]}

# 遍历背包
tag @s add cng.ammocost
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot0
execute if entity @s[tag=cng.ammocost] run function cng:events/player/ammo_cost/slot1
# 重置
scoreboard players reset @s cng.ammocount
execute if score @s cng.istrueammo matches 1.. run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.id set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute at @s run setblock ~ 0 ~ bedrock
