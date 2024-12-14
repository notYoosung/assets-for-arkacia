scoreboard players set @a[tag=icearcher] cooldown1 1
execute at @a[tag=icearcher] run effect give @e[distance=..5,tag=!icearcher] slowness 5 2 false
execute at @a[tag=icearcher] run effect give @e[distance=..5,tag=!icearcher] blindness 2 1 false
execute at @a[tag=icearcher] run playsound minecraft:entity.player.hurt_freeze ambient @a[distance=..5,tag=!icearcher]
execute at @a[tag=icearcher] run particle minecraft:flash ~ ~ ~ 0 0 0 0 3
schedule function powers:iacool1 25s
