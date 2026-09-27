execute on passengers run tp @s ~ -10000 ~
execute unless predicate dangerous_creepers:has_passenger run kill @s
execute if predicate dangerous_creepers:has_passenger positioned ~ ~ ~ run playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 0.8 0.8
execute if predicate dangerous_creepers:has_passenger positioned ~ ~ ~ run playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 1 1
data remove entity @s fuse
execute if entity @s[tag=!dangerous_creepers.charged] run data modify entity @s Motion set value [0,1,0]

execute if entity @s[tag=dangerous_creepers.charged] on vehicle run execute if entity @s[tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=dangerous_creepers.4] run function dangerous_creepers:creeper/throw_charged_tnt_3
execute if entity @s[tag=dangerous_creepers.charged] on vehicle run execute if entity @s[tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=dangerous_creepers.3,tag=!dangerous_creepers.4] run function dangerous_creepers:creeper/throw_charged_tnt_2
execute if entity @s[tag=dangerous_creepers.charged] on vehicle run execute if entity @s[tag=dangerous_creepers.1,tag=dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] run function dangerous_creepers:creeper/throw_charged_tnt_1
execute if entity @s[tag=dangerous_creepers.charged] on vehicle run execute if entity @s[tag=dangerous_creepers.1,tag=!dangerous_creepers.2,tag=!dangerous_creepers.3,tag=!dangerous_creepers.4] run summon tnt ~ ~ ~ {Tags:["dangerous_creepers.fused","dangerous_creepers.creeper_tnt"],Motion:[0,1,0]}

ride @s dismount
tag @s add dangerous_creepers.creeper_tnt
execute if entity @s[tag=dangerous_creepers.charged] run kill @s