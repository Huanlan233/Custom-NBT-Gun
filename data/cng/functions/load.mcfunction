tellraw @a {"text": "[Custom NBT Gun] 已加载。"}

# Item
# Used 枪使用检测
scoreboard objectives add cng.used used:carrot_on_a_stick
# IsGun 检测是否手持物品为枪
scoreboard objectives add cng.isgun dummy

# Entity
# AmmoTypeID 子弹类型ID,决定了射出的是何种子弹
scoreboard objectives add cng.ammoid dummy
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


# Constant 常数
scoreboard objectives add cng.constant dummy
scoreboard players set #15000 cng.constant 15000
scoreboard players set #100 cng.constant 100
scoreboard players set #1 cng.constant 1
scoreboard players set #-1 cng.constant -1