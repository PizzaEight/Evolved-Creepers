tag @s add dangerous_creepers.held
tag @s add dangerous_creepers.prop
tag @s add dangerous_creepers.charged
tag @s add dangerous_creepers.3
data modify entity @s fuse set value -1000000000
execute summon tnt run function dangerous_creepers:creeper/add_tnt_3
ride @n[tag=dangerous_creepers.4,tag=dangerous_creepers.held,type=tnt] mount @s