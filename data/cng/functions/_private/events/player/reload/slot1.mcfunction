# 放置容器
setblock ~ 0 ~ shulker_box{Items: [{Count: 1, id: "stone", tag: {CngAmmoNBT: {ID: "Default"}}}]}

# 将SelectedItem.tag.CngNBT.AmmoID存储到Items[0]
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID

# 用data modify判断是否为正确ID
execute if data entity @s Inventory[{Slot: 1b}].tag.CngAmmoNBT store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: 1b}].tag.CngAmmoNBT.ID

## 是(0)
###  将Inventory[{Slot:1b}].tag、id、Count存储到Items[0]
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: 1b}].tag
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot: 1b}].Count
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: 1b}].id

### 存储Items[0].Count到cng.ammocount
execute if score @s cng.istrueammo matches 0 store result score @s cng.ammocount run data get block ~ 0 ~ Items[0].Count

### 获取SelectedItem.tag.CngNBT.MaxAmmo和HaveAmmo并分别存储到cng.maxammo和cng.haveammo
execute store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo

### 存储maxammo - haveammo的结果到cng.needammo
scoreboard players operation @s cng.needammo = @s cng.maxammo
scoreboard players operation @s cng.needammo -= @s cng.haveammo


### 判断是否cng.ammocount >= cng.needammo
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: 1b}].tag.CngAmmoNBT if score @s cng.ammocount < @s cng.needammo run tag @s add cng.ammocountR0
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: 1b}].tag.CngAmmoNBT if score @s cng.ammocount >= @s cng.needammo run tag @s add cng.ammocountR1

#### 是
##### 存储cng.ammocount - cng.need的结果到Items[0].Count
execute if entity @s[tag=cng.ammocountR1] store result block ~ 0 ~ Items[0].Count int 1 run scoreboard players operation @s cng.ammocount -= @s cng.needammo

##### item replace替换
execute if entity @s[tag=cng.ammocountR1] run item replace entity @s container.1 from block ~ 0 ~ container.0

##### 更新手中枪械
execute if entity @s[tag=cng.ammocountR1] run function cng:_private/events/player/reload/loading1

#### 否
##### 让cng.ammocount += cng.haveammo
execute if entity @s[tag=cng.ammocountR0] run scoreboard players operation @s cng.ammocount += @s cng.haveammo

##### item replace替换
execute if entity @s[tag=cng.ammocountR0] run item replace entity @s container.1 with air

##### 更新手中枪械
execute if entity @s[tag=cng.ammocountR0] run function cng:_private/events/player/reload/loading2

# 
tag @s remove cng.istrueammo
tag @s remove cng.ammocountR0
tag @s remove cng.ammocountR1
tag @s remove cng.nohaveammo

setblock ~ 0 ~ bedrock