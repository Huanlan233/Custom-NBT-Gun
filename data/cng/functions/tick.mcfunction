# NBTs
function cng:nbts

# Handlers
function cng:handlers/player_handler
function cng:handlers/entity_handler


# 清除已经落地的子弹
kill @e[nbt={inGround:1b},tag=cng.bullet]

# 重置

# Scoreboard
scoreboard players reset @e cng.used
# Tags
tag @e remove cng.gun_used
tag @e remove cng.be_hit