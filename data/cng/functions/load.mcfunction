tellraw @a {"text": "[Custom NBT Gun] 已加载。"}


# 枪使用检测
scoreboard objectives add cng.used used:carrot_on_a_stick "枪使用检测"

# 实体受到的伤害
scoreboard objectives add cng.get_damage dummy "实体受到的伤害"

# 中弹检测
scoreboard objectives add cng.be_hit dummy "中弹检测"

# HurtTime
scoreboard objectives add cng.hurttime dummy "HurtTime"

# 坐标
scoreboard objectives add cng.posx dummy "坐标X"
scoreboard objectives add cng.posy dummy "坐标Y"
scoreboard objectives add cng.posz dummy "坐标Z"

# 向量
scoreboard objectives add cng.vecx dummy "向量X"
scoreboard objectives add cng.vecy dummy "向量Y"
scoreboard objectives add cng.vecz dummy "向量Z"

# 子弹
scoreboard objectives add cng.ammocount dummy "当前栏位弹药数量"
scoreboard objectives add cng.needammo dummy "所需弹药数量"
scoreboard objectives add cng.maxammo dummy "最大弹药数量"
scoreboard objectives add cng.haveammo dummy "弹匣内弹药数量"
scoreboard objectives add cng.istrueammo dummy "弹药ID检测"

# 角度X
scoreboard objectives add cng.rotx dummy "角度X"
# 角度Y
scoreboard objectives add cng.roty dummy "角度Y"

# 偏航角后坐力 
scoreboard objectives add cng.y_recoil dummy "Y后坐力"
# 偏航角后坐力偏移度
scoreboard objectives add cng.yo_recoil dummy "Y后坐力偏移度"
# 俯仰角后坐力 
scoreboard objectives add cng.x_recoil dummy "X后坐力"
# 俯仰角后坐力偏移度
scoreboard objectives add cng.xo_recoil dummy "X后坐力偏移度"

# 冷却
scoreboard objectives add cng.cooldown dummy "冷却"

# 下坠
scoreboard objectives add cng.drop dummy "下坠"

# 常数
scoreboard objectives add cng.constant dummy "常数"
scoreboard players set #100 cng.constant 100
scoreboard players set #2 cng.constant 2
scoreboard players set #-1 cng.constant -1