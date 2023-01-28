# 检测玩家是否使用枪
execute as @a[scores={cng.used=1..}] if score @s cng.isgun matches 1.. run tag @s add cng.gun_used

# 消耗子弹
execute as @a[tag=cng.gun_used] at @s run function cng:events/player/ammo_cost
# 召唤子弹
execute as @a[tag=cng.gun_used] run function cng:events/player/bullet_summon