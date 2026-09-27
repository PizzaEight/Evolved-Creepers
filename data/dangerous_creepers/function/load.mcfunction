function dangerous_creepers:countdown_5_min
function dangerous_creepers:countdown
function dangerous_creepers:countdown_long
schedule function dangerous_creepers:countdown_really_long 60s
schedule function dangerous_creepers:countdown_really_really_long 600s
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy
scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy
scoreboard objectives add dangerous_creepers.load dummy
scoreboard objectives add dangerous_creepers.cooldown dummy
scoreboard objectives add dangerous_creepers.chance dummy
scoreboard objectives add dangerous_creepers.random_chance dummy
scoreboard objectives add dangerous_creepers.increasing_chance dummy
scoreboard objectives add dangerous_creepers.increasing_charged_chance dummy
execute unless score dangerous_creepers.config dangerous_creepers.chance matches 0.. run scoreboard players set dangerous_creepers.config dangerous_creepers.chance 0
