execute if entity @s[tag=!dangerous_creepers.charged] run function dangerous_creepers:creeper/main
execute if entity @s[tag=dangerous_creepers.charged] run function dangerous_creepers:creeper/enpower
execute positioned ~ ~ ~ run playsound minecraft:block.grass.break hostile @a ~ ~ ~ 1 0.8
execute positioned ~ ~ ~ run playsound minecraft:item.armor.equip_generic hostile @a ~ ~ ~ 1 1
scoreboard players set @s dangerous_creepers.cooldown 0
tag @s remove dangerous_creepers.threw