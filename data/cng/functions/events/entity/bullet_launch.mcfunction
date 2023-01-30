# 设置Owner
execute at @s run data modify entity @s Owner set from entity @a[limit=1,distance=..2.5,sort=nearest] UUID

# 设置速度效果秒数为伤害
execute at @s store result entity @s CustomPotionEffects[{Id: 20b}].Duration int 1 run data get entity @a[limit=1,distance=..2.5,sort=nearest] SelectedItem.tag.CngNBT.Damage

# 向量计算
execute as @e store result score @s cng.posx run data get entity @s Pos[0] 10000
execute as @e store result score @s cng.posy run data get entity @s Pos[1] 10000
execute as @e store result score @s cng.posz run data get entity @s Pos[2] 10000


execute at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecx positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posx -= @a[distance=..2.5,limit=1,sort=nearest] cng.posx
execute at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecy positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posy -= @a[distance=..2.5,limit=1,sort=nearest] cng.posy
execute at @s if entity @a[limit=1,distance=..2.5,sort=nearest] store result score @s cng.vecz positioned ~ ~-.65 ~ run scoreboard players operation @s cng.posz -= @a[distance=..2.5,limit=1,sort=nearest] cng.posz

# 转为动量
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s cng.vecx
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s cng.vecy -= #15000 cng.constant
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s cng.vecz

# 已发射状态
tag @s add cng.bullet
tag @s remove cng.bullet_not_fired
