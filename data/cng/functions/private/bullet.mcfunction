# 初始化属性
execute as @e[tag=cngt.bullet_not_fired] at @s run function cng:private/bullet/pre_launch/properties

tag @e[tag=cngt.bullet_not_fired] add cngt.bullet_fired
tag @e[tag=cngt.bullet_not_fired] remove cngt.bullet_not_fired

# 预发射结束
execute as @e[tag=cngt.bullet_fired] at @s run function cng:private/bullet/launch/properties
execute as @e[tag=cngt.bullet_fired] at @s run function cng:private/bullet/launch/pierce_testfor

# 清除已经落地的子弹
execute as @e[nbt={inGround:1b},tag=cngt.bullet] at @s run function cng:private/bullet/clear