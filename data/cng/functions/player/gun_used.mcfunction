# 检测玩家是否使用枪
execute as @a[scores={cng.used=1..}] if score @s cng.isgun matches 1 run tag @s add cng.gun_used