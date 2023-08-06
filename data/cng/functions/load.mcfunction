tellraw @a {"text": "[Custom NBT Gun] 已加载。"}

# 枪使用检测
scoreboard objectives add cngs.000 used:carrot_on_a_stick "Gun used"

# 常数
scoreboard objectives add cngs.001 dummy "Const"

# 坐标
scoreboard objectives add cngs.002 dummy "Position X"
scoreboard objectives add cngs.003 dummy "Position Y"
scoreboard objectives add cngs.004 dummy "Position Z"

# 向量
scoreboard objectives add cngs.005 dummy "Vector X"
scoreboard objectives add cngs.006 dummy "Vector Y"
scoreboard objectives add cngs.007 dummy "Vector Z"

# 角度X
scoreboard objectives add cngs.008 dummy "Angle X"
# 角度Y
scoreboard objectives add cngs.009 dummy "Angle Y"

# 偏航角后坐力 
scoreboard objectives add cngs.010 dummy "Y-axis Recoil"
# 偏航角后坐力偏移度
scoreboard objectives add cngs.011 dummy "Y-axis Recoil Offest"
# 俯仰角后坐力 
scoreboard objectives add cngs.012 dummy "X-axis Recoil"
# 俯仰角后坐力偏移度
scoreboard objectives add cngs.013 dummy "X-axis Recoil Offest"

# 子弹
scoreboard objectives add cngs.014 dummy "Ammo of Current Slot"
scoreboard objectives add cngs.015 dummy "Required Ammo"
scoreboard objectives add cngs.016 dummy "Max Ammo"
scoreboard objectives add cngs.017 dummy "Ammo of Gun"
scoreboard objectives add cngs.018 dummy "Ammo Identifier Detection"

# 冷却
scoreboard objectives add cngs.019 dummy "Cooldown"

# 下坠
scoreboard objectives add cngs.020 dummy "Bullet Drop"

# 实体受到的伤害
scoreboard objectives add cngs.021 dummy "Damage to Mob"


# 中弹检测
scoreboard objectives add cngs.022 dummy "Be Hit Detection"

# HurtTime
scoreboard objectives add cngs.023 dummy "HurtTime"

# 穿透
scoreboard objectives add cngs.024 dummy "Pierce"


scoreboard players set #100 cngs.001 100
scoreboard players set #2 cngs.001 2
scoreboard players set #-1 cngs.001 -1