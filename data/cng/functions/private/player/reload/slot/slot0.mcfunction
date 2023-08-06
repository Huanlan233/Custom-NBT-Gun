# 放置容器
setblock ~ 0 ~ shulker_box{Items: [{Count: 1, id: "stone", tag: {CngAmmoNBT: {ID: "Default"}}}]}

# 将SelectedItem.tag.CngNBT.AmmoID存储到Items[0]
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID

# 用data modify判断是否为正确ID
execute if data entity @s Inventory[{Slot: 0b}].tag.CngAmmoNBT store success score @s cngs.018 run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: 0b}].tag.CngAmmoNBT.ID

## 是(0)
###  将Inventory[{Slot:1b}].tag、id、Count存储到Items[0]
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: 0b}].tag
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot: 0b}].Count
execute if score @s cngs.018 matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: 0b}].id

### 存储Items[0].Count到cngs.014
execute if score @s cngs.018 matches 0 store result score @s cngs.014 run data get block ~ 0 ~ Items[0].Count

### 获取SelectedItem.tag.CngNBT.MaxAmmo和HaveAmmo并分别存储到cngs.016和cngs.017
execute store result score @s cngs.016 run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute store result score @s cngs.017 run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo

### 存储maxammo - haveammo的结果到cngs.015
scoreboard players operation @s cngs.015 = @s cngs.016
scoreboard players operation @s cngs.015 -= @s cngs.017

### 判断是否cngs.014 >= cngs.015
execute if score @s cngs.018 matches 0 if data entity @s Inventory[{Slot: 0b}].tag.CngAmmoNBT if score @s cngs.014 < @s cngs.015 run tag @s add cngt.ammocountR0
execute if score @s cngs.018 matches 0 if data entity @s Inventory[{Slot: 0b}].tag.CngAmmoNBT if score @s cngs.014 >= @s cngs.015 run tag @s add cngt.ammocountR1

#### 是
##### 存储cngs.014 - cng.need的结果到Items[0].Count
execute if entity @s[tag=cngt.ammocountR1] store result block ~ 0 ~ Items[0].Count int 1 run scoreboard players operation @s cngs.014 -= @s cngs.015

##### item replace替换
execute if entity @s[tag=cngt.ammocountR1] run item replace entity @s container.0 from block ~ 0 ~ container.0

##### 更新手中枪械
execute if entity @s[tag=cngt.ammocountR1] run function cng:private/player/reload/load1

#### 否
##### 让cngs.014 += cngs.017
execute if entity @s[tag=cngt.ammocountR0] run scoreboard players operation @s cngs.014 += @s cngs.017

##### item replace替换
execute if entity @s[tag=cngt.ammocountR0] run item replace entity @s container.0 with air

##### 更新手中枪械
execute if entity @s[tag=cngt.ammocountR0] run function cng:private/player/reload/load2

# 
tag @s remove cngt.istrueammo
tag @s remove cngt.ammocountR0
tag @s remove cngt.ammocountR1
tag @s remove cngt.nohaveammo

setblock ~ 0 ~ bedrock