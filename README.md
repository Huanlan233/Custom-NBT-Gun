# Custom NBT GUN
一款自定义枪械数据包。

所有Tag、计分板、命名空间均已加上cng前缀(防冲突)

## 快速上手

### 安装前置库

- [Custom Damage](https://www.mcmod.cn/class/8873.html)

### 配置
目前提供了7个可自定义的参数：

枪械可自定义的NBT：
```JSON
"CngNBT":{
    "Damage": <Int>,
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

给予自己水平后坐力为50，水平后坐力偏移度为10，垂直后坐力为100，垂直后坐力偏移度为40且伤害为100的枪械

```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,Recoil:{X:50,X_Offest:10,Y:100,Y_Offest:40}}}
```

## TODO

- [x] 实现消耗自定义子弹功能
- [x] 实现换弹功能
- [x] 自定义后坐力
- [ ] More...

## Bugs

- [ ] 当NeedAmmo(MaxAmmo - HaveAmmo)为65时会少消耗一颗子弹 ~~小bug，懒得修了~~
- [ ] 最大换弹数量127(可能不算BUG)