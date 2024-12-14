scoreboard players set @a[tag=lightningberserker] cooldown1 1
execute at @a[tag=lightningberserker] run playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..20]
summon area_effect_cloud ^ ^1 ^3 {Particle:"witch",Radius:2f,Duration:5,Tags:["electric_pulse"]}
execute at @e[tag=electric_pulse,type=area_effect_cloud] run effect give @e[tag=!lightningberserker,distance=..3] wither 2 3 true
execute at @e[tag=electric_pulse,type=area_effect_cloud] run effect give @e[tag=!lightningberserker,distance=..3] weakness 2 255 true
execute at @e[tag=electric_pulse,type=area_effect_cloud] run effect give @e[tag=!lightningberserker,distance=..3] glowing 1 1 true
schedule function powers:lbcool1 15s
