# 发射子弹
execute as @e[tag=cng.bullet_not_fired] run function cng:events/entity/bullet_launch

# 受伤
# 检测被击中的人
execute as @e[scores={cng.hurttime=1..}] store success score @s cng.be_hit run effect clear @s invisibility
execute as @e[scores={cng.be_hit=1..}] run tag @s add cng.be_hit
execute as @e[tag=cng.be_hit] run function cng:events/entity/entity_get_damage