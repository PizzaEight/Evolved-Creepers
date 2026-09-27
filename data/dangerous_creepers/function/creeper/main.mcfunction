summon tnt ~ ~ ~ {Tags:["dangerous_creepers.held","dangerous_creepers.prop","dangerous_creepers.1"],fuse:-1000000000}
ride @n[tag=dangerous_creepers.held,type=tnt] mount @s
data merge entity @s {equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"dangerous_creepers:explosion_protection":1},"minecraft:unbreakable":{}}}},drop_chances:{head:0.000}}
execute positioned ~ ~ ~ run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.8
execute positioned ~ ~ ~ run playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1 1
tag @s add dangerous_creepers.dangerous