# 初始化属性
execute as @e[tag=cng.bullet_not_fired] at @s run function cng:private/bullet/pre_launch/properties

tag @e[tag=cng.bullet_not_fired] add cng.bullet_fired
tag @e[tag=cng.bullet_not_fired] remove cng.bullet_not_fired

# 预发射结束
execute as @e[tag=cng.bullet_fired] at @s run function cng:private/bullet/launch/fly