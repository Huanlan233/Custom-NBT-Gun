function cng:private/bullet/pre_launch/properties/owner
function cng:private/bullet/pre_launch/properties/vector
function cng:private/bullet/pre_launch/properties/rotation

execute if data entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.Damage run function cng:private/bullet/pre_launch/properties/damage
execute if data entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.Drop run function cng:private/bullet/pre_launch/properties/drop
execute if data entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.Pierce run function cng:private/bullet/pre_launch/properties/pierce
execute if data entity @a[limit=1,sort=nearest] SelectedItem.tag.CngNBT.AmmoID run function cng:private/bullet/pre_launch/properties/bullet_tag