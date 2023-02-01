# 发射子弹
execute as @e[tag=cng.bullet_not_fired] at @s run function cng:_private/events/entity/bullet_launch

# 受伤
execute as @e store result score @s cng.hurttime run data get entity @s HurtTime
execute as @e[scores={cng.hurttime=1..},nbt={ActiveEffects: [{Id: 20b, Amplifier: 2b}]}] store success score @s cng.be_hit run effect clear @s glowing
execute as @e[scores={cng.be_hit=1..}] run tag @s add cng.be_hit
execute as @e[tag=cng.be_hit] run function cng:_private/events/entity/entity_get_damage