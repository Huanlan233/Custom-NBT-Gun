tellraw @a {"text": "[Custom NBT Gun] 已加载。"}


# Used 枪使用检测
scoreboard objectives add cng.used used:carrot_on_a_stick

# IsGun 检测是否手持物品为枪
scoreboard objectives add cng.isgun dummy

# GetDamage 实体受到的伤害
scoreboard objectives add cng.get_damage dummy

# BeHit 检测是否中弹
scoreboard objectives add cng.be_hit dummy

# HurtTime 受到伤害
scoreboard objectives add cng.hurttime dummy

# Position 坐标
scoreboard objectives add cng.posx dummy
scoreboard objectives add cng.posy dummy
scoreboard objectives add cng.posz dummy

# Vector 向量
scoreboard objectives add cng.vecx dummy
scoreboard objectives add cng.vecy dummy
scoreboard objectives add cng.vecz dummy

# SlotAmmoCount 栏位子弹数量
scoreboard objectives add cng.ammocount dummy

# NeedAmmo
scoreboard objectives add cng.needammo dummy
# MaxAmmo
scoreboard objectives add cng.maxammo dummy
# HaveAmmo
scoreboard objectives add cng.haveammo dummy
# IsTrueAmmo
scoreboard objectives add cng.istrueammo dummy

# RotX
scoreboard objectives add cng.rotx dummy
#RotY
scoreboard objectives add cng.roty dummy

# Y Recoil 偏航角后坐力 
scoreboard objectives add cng.y_recoil dummy
# Y Recoil Offset 偏航角偏移度
scoreboard objectives add cng.yo_recoil dummy
# X Recoil 俯仰角后坐力 
scoreboard objectives add cng.x_recoil dummy
# X Recoil Offset 俯仰角偏移度
scoreboard objectives add cng.xo_recoil dummy

# Random
scoreboard objectives add cng.random dummy

# Cooldown
scoreboard objectives add cng.cooldown dummy

# Constant 常数
scoreboard objectives add cng.constant dummy
scoreboard players set #15000 cng.constant 15000
scoreboard players set #100 cng.constant 100
scoreboard players set #2 cng.constant 2
scoreboard players set #1 cng.constant 1
scoreboard players set #0 cng.constant 0
scoreboard players set #-1 cng.constant -1