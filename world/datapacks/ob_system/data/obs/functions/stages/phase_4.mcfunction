
# Basic Stuff
scoreboard players add @s cob.phase 1
worldborder set 300

# Trader
execute as @e[tag=ob.stage_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
tp @e[tag=ob.stage_dealer] 0 -1000 0
particle minecraft:cloud 0 62 0 0.125 0.5 0.125 0.05 10 force
summon villager 0 61 0 {ActiveEffects:[{Id:25,Amplifier:10b,Duration:10},{Id:28,Amplifier:1b,Duration:60}],Tags:["ob.trader","ob.stage_dealer"],CustomName:'{"text":"Oneblock Trader","color":"green"}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:plains"},Offers:{Recipes:[{maxUses:1,buy:{id:'minecraft:dirt',Count:32b},sell:{id:'minecraft:gunpowder',Count:10b}},{maxUses:2,buy:{id:'minecraft:cobblestone',Count:64b},sell:{id:'minecraft:iron_pickaxe',Count:1b}},{maxUses:4,buy:{id:'minecraft:rotten_flesh',Count:8b},sell:{id:'minecraft:carrot',Count:1b}},{maxUses:4,buy:{id:'minecraft:rotten_flesh',Count:8b},sell:{id:'minecraft:potato',Count:1b}}]}}