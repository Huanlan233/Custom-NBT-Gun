# F换弹
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

# 装弹冷却
execute store result score @s cng.haveammo run data get entity @s SelectedItem.tag.CngNBT.HaveAmmo
execute store result score @s cng.maxammo run data get entity @s SelectedItem.tag.CngNBT.MaxAmmo
execute unless score @s cng.haveammo = @s cng.maxammo store result score @s cng.cooldown run data get entity @s SelectedItem.tag.CngNBT.LoadingTime

function cng:private/player/reload/slot/slot0
function cng:private/player/reload/slot/slot1
function cng:private/player/reload/slot/slot2
function cng:private/player/reload/slot/slot3
function cng:private/player/reload/slot/slot4
function cng:private/player/reload/slot/slot5
function cng:private/player/reload/slot/slot6
function cng:private/player/reload/slot/slot7
function cng:private/player/reload/slot/slot8
function cng:private/player/reload/slot/slot9
function cng:private/player/reload/slot/slot10
function cng:private/player/reload/slot/slot11
function cng:private/player/reload/slot/slot12
function cng:private/player/reload/slot/slot13
function cng:private/player/reload/slot/slot14
function cng:private/player/reload/slot/slot15
function cng:private/player/reload/slot/slot16
function cng:private/player/reload/slot/slot17
function cng:private/player/reload/slot/slot18
function cng:private/player/reload/slot/slot19
function cng:private/player/reload/slot/slot20
function cng:private/player/reload/slot/slot21
function cng:private/player/reload/slot/slot22
function cng:private/player/reload/slot/slot23
function cng:private/player/reload/slot/slot24
function cng:private/player/reload/slot/slot25
function cng:private/player/reload/slot/slot26
function cng:private/player/reload/slot/slot27
function cng:private/player/reload/slot/slot28
function cng:private/player/reload/slot/slot29
function cng:private/player/reload/slot/slot30
function cng:private/player/reload/slot/slot31
function cng:private/player/reload/slot/slot32
function cng:private/player/reload/slot/slot33
function cng:private/player/reload/slot/slot34
function cng:private/player/reload/slot/slot35


tag @a[tag=cng.reloading] remove cng.reloading