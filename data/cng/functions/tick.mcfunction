# Handlers
function cng:private/player
function cng:private/bullet
function cng:private/entity

# 清除已经落地的子弹
execute as @e[nbt={inGround:1b},tag=cng.bullet] at @s run function cng:private/bullet/clear

scoreboard players reset @e cng.used
tag @e remove cng.shoot