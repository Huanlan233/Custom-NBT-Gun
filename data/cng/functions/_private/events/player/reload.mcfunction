# F换弹
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

scoreboard players reset @s cng.needammo2

tag @s add cng.v1
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot0
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot1
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot2
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot3
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot3
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot4
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot5
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot6
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot7
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot8
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot9
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot10
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot11
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot12
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot13
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot14
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot15
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot16
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot17
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot18
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot19
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot20
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot21
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot22
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot23
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot24
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot25
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot26
execute if entity @s[tag=cng.v1] at @s run function cng:_private/events/player/reload/slot27

scoreboard players reset @s cng.needammo2
scoreboard players reset @s cng.ammocount2

tag @s remove cng.reloading