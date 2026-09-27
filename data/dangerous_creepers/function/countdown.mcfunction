schedule function dangerous_creepers:countdown 1s
execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=minecraft:creeper,distance=0..16,tag=dangerous_creepers.dangerous] run function dangerous_creepers:creeper/tick
execute as @e[type=creeper,tag=dangerous_creepers.dangerous] run function dangerous_creepers:creeper/cooldown