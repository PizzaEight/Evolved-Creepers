execute if entity @s[tag=dangerous_creepers.threw] run summon tnt ~ ~ ~ {Tags:["dangerous_creepers.held","dangerous_creepers.prop","dangerous_creepers.1"],fuse:-1000000000}
execute if entity @s[tag=dangerous_creepers.threw] run ride @n[tag=dangerous_creepers.held,type=tnt] mount @s
data modify entity @s powered set value 1b
execute summon tnt run function dangerous_creepers:creeper/add_tnt_1
execute if entity @s on passengers as @s[tag=dangerous_creepers.1] as @s run tag @s add dangerous_creepers.charged
execute if entity @s on passengers as @s[tag=dangerous_creepers.1] as @s run ride @n[tag=dangerous_creepers.2,tag=dangerous_creepers.held,type=tnt] mount @s
execute positioned ~ ~ ~ run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.8
execute positioned ~ ~ ~ run playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1 1
tag @s add dangerous_creepers.charged
tag @s add dangerous_creepers.1
tag @s add dangerous_creepers.2
tag @s add dangerous_creepers.3
tag @s add dangerous_creepers.4
