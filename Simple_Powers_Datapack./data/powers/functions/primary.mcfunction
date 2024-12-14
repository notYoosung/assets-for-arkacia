execute as @a store result score @s slot run data get entity @s SelectedItemSlot

execute at @a[tag=fireknight,scores={slot=8,cooldown1=0}] run effect give @a[tag=fireknight] strength 1 0 true
execute at @a[tag=fireknight,scores={hit=1..,slot=8,cooldown1=0}] run function powers:searing_blast
execute at @a[tag=fireknight,scores={sneak=1..,slot=7,cooldown2=0}] run function powers:phoenix_armor
title @a[tag=fireknight,scores={slot=7,cooldown2=0}] actionbar ["",{"text":"Phoenix Armor","color":"#FF2C14"},{"text":" (shift)","color":"gray"}]
title @a[tag=fireknight,scores={slot=7,cooldown2=1}] actionbar ["",{"text":"Phoenix Armor","color":"#FF2C14"},{"text":" (cooldown)","color":"dark_gray"}]
title @a[tag=fireknight,scores={slot=8,cooldown1=0}] actionbar ["",{"text":"Searing Blast","color":"gold"},{"text":" (punch)","color":"gray"}]
title @a[tag=fireknight,scores={slot=8,cooldown1=1}] actionbar ["",{"text":"Searing Blast","color":"gold"},{"text":" (cooldown)","color":"dark_gray"}]
execute at @a[tag=armor] run particle flame ~ ~ ~ 0 -1 0 0 1 normal

execute at @a[tag=windsamurai,scores={slot=8}] run function powers:become_wind_up
execute at @a[tag=windsamurai,scores={slot=7}] run function powers:become_wind_down
execute at @a[tag=windsamurai,scores={sneak=1..,slot=6,cooldown2=0}] run function powers:hazy_gale
title @a[tag=windsamurai,scores={slot=6,cooldown2=0}] actionbar ["",{"text":"Hazy Gale","color":"#96EEFF"},{"text":" (shift)","color":"gray"}]
title @a[tag=windsamurai,scores={slot=6,cooldown2=1}] actionbar ["",{"text":"Hazy Gale","color":"#96EEFF"},{"text":" (cooldown)","color":"dark_gray"}]
title @a[tag=windsamurai,scores={slot=7}] actionbar ["",{"text":"Become Wind","color":"#08FFAD"},{"text":" (down)","color":"gray"}]
title @a[tag=windsamurai,scores={slot=8}] actionbar ["",{"text":"Become Wind","color":"#08FFAD"},{"text":" (up)","color":"gray"}]
execute at @a[tag=hazygale] run summon area_effect_cloud ~ ~ ~ {Duration:300,Tags:["haze"]}
execute at @e[type=area_effect_cloud,tag=haze] run particle minecraft:dust 1 1 1 1 ~ ~2 ~ 1 1 5 0 1 force
execute at @e[type=area_effect_cloud,tag=haze] run effect give @e[tag=!windsamurai,distance=..6] slowness 2 1 true
execute at @e[type=area_effect_cloud,tag=haze] run effect give @e[tag=!windsamurai,distance=..6] weakness 2 0 true
execute at @e[type=area_effect_cloud,tag=haze] run effect give @e[tag=windsamurai,distance=..6] speed 2 1 true

execute at @a[tag=lightningberserker,scores={slot=8,cooldown1=0}] run effect give @a[tag=lightningberserker] speed 1 1 true
execute at @a[tag=lightningberserker,scores={hit=1..,slot=8,cooldown1=0}] run function powers:electric_pulse
execute at @a[tag=lightningberserker,scores={sneak=1..,slot=7,cooldown2=0}] run function powers:storm_blitz
title @a[tag=lightningberserker,scores={slot=7,cooldown2=0}] actionbar ["",{"text":"Storm Blitz","color":"dark_purple"},{"text":" (shift)","color":"gray"}]
title @a[tag=lightningberserker,scores={slot=7,cooldown2=1}] actionbar ["",{"text":"Storm Blitz","color":"dark_purple"},{"text":" (cooldown)","color":"dark_gray"}]
title @a[tag=lightningberserker,scores={slot=8,cooldown1=0}] actionbar ["",{"text":"Electric Pulse","color":"#D49CFF"},{"text":" (punch)","color":"dgray"}]
title @a[tag=lightningberserker,scores={slot=8,cooldown1=1}] actionbar ["",{"text":"Electric Pulse","color":"#D49CFF"},{"text":" (cooldown)","color":"dark_gray"}]

execute at @a[tag=icearcher,scores={sneak=1..,slot=8,cooldown1=0}] run function powers:flash_freeze
execute at @a[tag=icearcher,scores={sneak=1..,slot=7,cooldown2=0}] run function powers:cryo_arrow
title @a[tag=icearcher,scores={slot=7,cooldown2=0}] actionbar ["",{"text":"Cryo Arrow","color":"dark_aqua"},{"text":" (shift)","color":"gray"}]
title @a[tag=icearcher,scores={slot=7,cooldown2=1}] actionbar ["",{"text":"Cryo Arrow","color":"dark_aqua"},{"text":" (cooldown)","color":"dark_gray"}]
title @a[tag=icearcher,scores={slot=8,cooldown1=0}] actionbar ["",{"text":"Flash Freeze","color":"aqua"},{"text":" (shift)","color":"gray"}]
title @a[tag=icearcher,scores={slot=8,cooldown1=1}] actionbar ["",{"text":"Flash Freeze","color":"aqua"},{"text":" (cooldown)","color":"dark_gray"}]

scoreboard players reset @a sneak
scoreboard players reset @a hit
