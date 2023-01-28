# NBTs
function cng:nbts
# 检测玩家使用枪
function cng:events/player/gun_used
# 召唤子弹
function cng:events/entity/bullet_summon
# 受到伤害
function cng:events/entity/damage_get


# 清除已经落地的子弹
kill @e[nbt={inGround:1b},tag=cng.bullet]

# 重置

# Scoreboard
scoreboard players reset @e cng.used
# Tags
tag @e remove cng.gun_used
tag @e remove cng.be_hit