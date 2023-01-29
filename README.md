# Custom NBT GUN

***BETA!!! Don't use it!***
一款自定义枪械数据包

## 快速上手

目前提供了3个可自定义的参数
```JSON
// 枪械可自定义的NBT
"CngNBT":{
    "Damage": 100, // Int
    "AmmoID": "Default" // Str
}

// 子弹可自定义的NBT
"CngAmmoNBT":{
    "ID": "Default" // Str
}
```

给予自己一个伤害为100的枪械
```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100}}
```

给予自己一个伤害为100且使用子弹ID为Default的枪械
```MCFUNCTION
give @s carrot_on_a_stick{CngNBT:{Damage:100,AmmoID:"Default"}}
```