scoreboard players set @a[tag=lightningberserker] cooldown2 1
effect give @a[tag=lightningberserker] resistance 1 255 true
execute at @e[sort=nearest,limit=3,tag=!lightningberserker,distance=..7] run summon lightning_bolt
schedule function powers:lbcool2 35s
