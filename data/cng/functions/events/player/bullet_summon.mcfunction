# 召唤箭矢，CustomPotionEffects中的幸运(Id:26b)效果负责检测中箭，速度(Id:1b)效果负责存储伤害数量
execute at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.1 {Tags:["cng.bullet_not_fired"],damage:0.0001d,CustomPotionEffects:[{Id:14b,Amplifier:1b,Duration:20},{Id:1b,Amplifier:1b,Duration:0}]}
