scoreboard players set @a[tag=fireknight] cooldown2 1
tag @a[tag=fireknight] add armor 
execute at @a[tag=fireknight] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20]
effect give @a[tag=fireknight] fire_resistance 15 255 true
effect give @a[tag=fireknight] absorption 15 2 true
effect give @a[tag=fireknight] resistance 15 0 true
effect give @a[tag=fireknight] jump_boost 15 3 true
effect give @a[tag=fireknight] instant_health 1 0 true
effect give @a[tag=fireknight] strength 15 0 true
schedule function powers:armoroff 15s
schedule function powers:fkcool2 45s
