execute positioned ~ ~ ~ run playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 0.8 0.8
execute positioned ~ ~ ~ run playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 1 1
execute summon tnt run function dangerous_creepers:creeper/tnt_motion
execute if entity @s[tag=!dangerous_creepers.charged] on passengers run kill @s
tag @s[tag=!dangerous_creepers.charged] add dangerous_creepers.threw

execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=!dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] on passengers run kill @s
execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=!dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] run tag @s add dangerous_creepers.threw
execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=!dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] run tag @s remove dangerous_creepers.1

execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] on passengers run execute on passengers run kill @s
execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] run tag @s remove dangerous_creepers.2

execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=!dangerous_creepers.4] on passengers run execute on passengers run execute on passengers run execute run kill @s
execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=!dangerous_creepers.4] run tag @s remove dangerous_creepers.3

execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=dangerous_creepers.4] on passengers run execute on passengers run execute on passengers run execute on passengers run kill @s
execute if entity @s[tag=dangerous_creepers.charged,tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=dangerous_creepers.4] run tag @s remove dangerous_creepers.4

