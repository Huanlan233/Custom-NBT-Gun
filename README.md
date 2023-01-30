# Custom NBT GUN

***BETA!!! Don't use it!***
一款自定义枪械数据包

## 快速上手

目前提供了3个可自定义的参数

枪械可自定义的NBT
```JSON
"CngNBT":{
    "Damage": 100,
    "AmmoID": "Default"
}
```

子弹可自定义的NBT
```JSON
"CngAmmoNBT":{
    "ID": "Default"
}
```

## 示例

给予自己一个伤害为100的枪械
```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100}}
```

给予自己一个伤害为100且使用子弹ID为Default的枪械，并给予配套子弹
```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,AmmoID:"Default"}}
give @s iron_nugget{CngAmmoNBT:{ID:"Default"}}
```

## TODO

- [x] 实现消耗自定义子弹功能
- [x] 实现换弹功能
- [ ] 自定义后坐力
- [ ] More...

## Bugs

- [ ] 当NeedAmmo(MaxAmmo - HaveAmmo)为65时会少消耗一颗子弹
- [ ] 最大换弹数量127(可能不算BUG)