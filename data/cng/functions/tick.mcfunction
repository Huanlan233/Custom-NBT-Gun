# Handlers
function cng:private/player
function cng:private/bullet
function cng:private/entity

# 子弹死亡自定义事件
execute as @e[tag=cng.bullet] at @s run function #cng:bullet_die
# 清除已经落地的子弹
kill @e[nbt={inGround:1b},tag=cng.bullet]

scoreboard players reset @e cng.used
tag @e remove cng.shoot