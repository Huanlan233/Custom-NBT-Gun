# Custom NBT GUN

**测试版本，更新很快，目前尝个鲜就行**

一款自定义枪械数据包。

所有Tag、计分板、命名空间均已加上cng前缀(防冲突)

## 快速上手

### 安装前置库

- [Custom Damage](https://www.mcmod.cn/class/8873.html)

### 配置

目前提供了以下可自定义的参数：

枪械可自定义的NBT：
```JSON
"CngNBT":{
    "Damage": <Int>,
    "MaxAmmo": <Int>,
    "FiringInterval": <Int>,
    "LoadingTime": <Int>,
    "AmmoID": <Any>,
    "Recoil": {
        "X": <Int>,
        "X_Offset": <Int>,
        "Y": <Int>,
        "Y_Offset": <Int>
    }
}
```

子弹可自定义的NBT：
```JSON
"CngAmmoNBT":{
    "ID": <Any>
}
```

### 接口

目前开放了以下接口：

1. bullet/bullet_clear 子弹清除前事件
   
   可以实现例如在子弹清除前发生一个爆炸, 释放毒气等等...

2. entity/damage_get_before 受伤前事件
   
   可以在实体受伤前(已经被击中)进行一些操作

3. entity/damage_get_after 受伤后事件
   
   可以在实体受伤前(已经被击中)进行一些操作

4. player/reload_slot 换弹栏位
   
   可以添加更多支持换弹的栏位, 按照如下格式
```MCFUNCTION
setblock ~ 0 ~ shulker_box{Items: [{Count: 1, id: "stone", tag: {CngAmmoNBT: {ID: "Default"}}}]}
data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s SelectedItem.tag.CngNBT.AmmoID
execute if data entity @s Inventory[{Slot: <栏位ID>}].tag.CngAmmoNBT store success score @s cng.istrueammo run data modify block ~ 0 ~ Items[0].tag.CngAmmoNBT.ID set from entity @s Inventory[{Slot: <栏位ID>}].tag.CngAmmoNBT.ID
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].tag set from entity @s Inventory[{Slot: <栏位ID>}].tag
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].Count set from entity @s Inventory[{Slot: <栏位ID>}].Count
execute if score @s cng.istrueammo matches 0 run data modify block ~ 0 ~ Items[0].id set from entity @s Inventory[{Slot: <栏位ID>}].id
execute if score @s cng.istrueammo matches 0 store result score @s cng.ammocount run data get block ~ 0 ~ Items[0].Count
execute store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
scoreboard players operation @s cng.needammo = @s cng.maxammo
scoreboard players operation @s cng.needammo -= @s cng.haveammo
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: <栏位ID>}].tag.CngAmmoNBT if score @s cng.ammocount < @s cng.needammo run tag @s add cng.ammocountR0
execute if score @s cng.istrueammo matches 0 if data entity @s Inventory[{Slot: <栏位ID>}].tag.CngAmmoNBT if score @s cng.ammocount >= @s cng.needammo run tag @s add cng.ammocountR1
execute if entity @s[tag=cng.ammocountR1] store result block ~ 0 ~ Items[0].Count int 1 run scoreboard players operation @s cng.ammocount -= @s cng.needammo
execute if entity @s[tag=cng.ammocountR1] run item replace entity @s container.12 from block ~ 0 ~ container.0
execute if entity @s[tag=cng.ammocountR1] run function cng:private/player/reload/load1
execute if entity @s[tag=cng.ammocountR0] run scoreboard players operation @s cng.ammocount += @s cng.haveammo
execute if entity @s[tag=cng.ammocountR0] run item replace entity @s container.12 with air
execute if entity @s[tag=cng.ammocountR0] run function cng:private/player/reload/load2
tag @s remove cng.istrueammo
tag @s remove cng.ammocountR0
tag @s remove cng.ammocountR1
tag @s remove cng.nohaveammo

setblock ~ 0 ~ bedrock 
```
   
   如果想添加更多支持的栏位可以将换弹函数加入其中

5. player/shoot 枪械使用事件
   
   在玩家右键枪械时执行

你可以将自己的函数添加进这些tag，在相关函数执行时会调用

## 示例

给予自己一个伤害为100的枪械(如果MaxAmmo不存在则不消耗子弹)。

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100}}
```

给予自己一个伤害为100最大子弹数量为30且使用子弹ID为Default的枪械, 并给予配套子弹。

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,AmmoID:"Default",MaxAmmo:30}}
give @s iron_nugget{CngAmmoNBT:{ID:"Default"}}
```

给予自己水平后坐力为50，水平后坐力偏移度为10，垂直后坐力为100，垂直后坐力偏移度为40且伤害为100的枪械(当X或Y不存在时候则没有相关后坐力)

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,Recoil:{X:50,X_Offest:10,Y:100,Y_Offest:40}}}
```

给予自己射击间隔为100tick，装弹时间为20tick的枪械

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{FiringInterval:100,LoadingTime:20}}
```

## TODO

- [x] 实现消耗自定义子弹功能
- [x] 实现F换弹功能
- [x] 自定义后坐力
- [x] 自定义换弹时间(在换弹期间不许射射)
- [x] 自定义射击间隔
- [ ] 自定义子弹下坠
- [ ] 自定义霰弹枪散射范围
- [ ] 无间隔攻击
- [ ] More...

## Bugs

- [x] 当换弹所需数量为65时会少消耗一颗子弹 ~~小bug，懒得修了~~
- [x] 最大换弹数量127(可能不算BUG)