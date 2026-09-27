tag @s add dangerous_creepers.creeper_tnt
tag @s add dangerous_creepers.prop
data modify entity @s owner set from entity @n[type=creeper] UUID
tp @s ~ ~1 ~
function dangerous_creepers:motion