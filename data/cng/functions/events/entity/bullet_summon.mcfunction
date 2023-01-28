# 召唤箭矢，CustomPotionEffects中的幸运(Id:26b)效果负责检测中箭，速度(Id:1b)效果负责存储伤害数量
execute as @a[tag=cng.gun_used] at @s positioned ~ ~1.5 ~ run summon arrow ^ ^ ^0.1 {Tags:["cng.bullet_not_fired"],damage:0.0001d,CustomPotionEffects:[{Id:14b,Amplifier:1b,Duration:20},{Id:1b,Amplifier:1b,Duration:0}]}

# 设置Owner
execute as @e[tag=cng.bullet_not_fired] run data modify entity @s Owner set from entity @a[limit=1,distance=..2.5,sort=nearest] UUID

# 设置速度效果秒数为伤害
execute as @e[tag=cng.bullet_not_fired] at @s store result entity @s CustomPotionEffects[1].Duration int 1 run data get entity @a[limit=1,distance=..2.5,sort=nearest] SelectedItem.tag.CngNBT.Damage

# 向量计算
execute as @e store result score @s cng.posx run data get entity @s Pos[0] 10000
execute as @e store result score @s cng.posy run data get entity @s Pos[1] 10000
execute as @e store result score @s cng.posz run data get entity @s Pos[2] 10000


execute as @e[tag=cng.bullet_not_fired] at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecx positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posx -= @a[distance=..2.5,limit=1,sort=nearest] cng.posx
execute as @e[tag=cng.bullet_not_fired] at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecy positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posy -= @a[distance=..2.5,limit=1,sort=nearest] cng.posy
execute as @e[tag=cng.bullet_not_fired] at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecz positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posz -= @a[distance=..2.5,limit=1,sort=nearest] cng.posz

# 转为动量
execute as @e[tag=cng.bullet_not_fired] store result entity @s Motion[0] double 0.01 run scoreboard players get @s cng.vecx
execute as @e[tag=cng.bullet_not_fired] store result entity @s Motion[1] double 0.01 run scoreboard players operation @s cng.vecy -= #15000 cng.constant
execute as @e[tag=cng.bullet_not_fired] store result entity @s Motion[2] double 0.01 run scoreboard players get @s cng.vecz

# 已发射状态
execute as @e[tag=cng.bullet_not_fired] run tag @s add cng.bullet
execute as @e[tag=cng.bullet_not_fired] run tag @s remove cng.bullet_not_fired