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

1. bullet_die 子弹清除前事件
2. damage_get_before 受伤前事件
3. damage_get_after 受伤后事件
4. reloading_slot 换弹栏位，如果想添加更多支持的栏位可以将换弹函数加入其中
5. gun_used 枪械使用事件，在玩家右键枪械时执行，执行于召唤子弹后

你可以将自己的函数添加进这些tag，在相关函数执行时会调用

## 示例

给予自己一个伤害为100的枪械(如果MaxAmmo不存在则不消耗子弹)。

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100}}
```

给予自己一个伤害为100且使用子弹ID为Default的枪械，并给予配套子弹。

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,AmmoID:"Default"}}
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
- [ ] 实现Q换弹功能
- [ ] Q/F换弹切换功能
- [x] 自定义后坐力
- [x] 自定义换弹时间(在换弹期间不许射射)
- [x] 自定义射击间隔
- [ ] More...

## Bugs

- [x] 当换弹所需数量为65时会少消耗一颗子弹 ~~小bug，懒得修了~~
- [x] 最大换弹数量127(可能不算BUG)