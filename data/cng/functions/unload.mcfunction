tellraw @a {"text": "[Custom NBT Gun] 已卸载，请及时删除数据包文件。"}

# Item
# Used 枪使用检测
scoreboard objectives remove cng.used
# IsGun 检测是否手持物品为枪
scoreboard objectives remove cng.isgun
# Damage 枪的伤害
scoreboard objectives remove cng.damage


# Entity
# GetDamage 实体受到的伤害
scoreboard objectives remove cng.get_damage
# IsHaveLuck 检测是否有幸运效果
scoreboard objectives remove cng.ishaveluck
# HurtTime 受到伤害
scoreboard objectives remove cng.hurttime
# Position 坐标
scoreboard objectives remove cng.posx
scoreboard objectives remove cng.posy
scoreboard objectives remove cng.posz
# Vector 向量
scoreboard objectives remove cng.vecx
scoreboard objectives remove cng.vecy
scoreboard objectives remove cng.vecz


# Constant 常数
scoreboard objectives remove cng.constant