execute as @e[tag=ob.visit_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
tp @e[tag=ob.visit_dealer] 0 -1000 0

summon marker ~ ~ ~ {Tags:["ob.trader_spawn"]}
spreadplayers ~ ~ 50 100 false @e[tag=ob.trader_spawn]
execute at @e[tag=ob.trader_spawn] run summon villager ~ ~ ~ {Tags:["ob.visit_dealer"],CustomName:'{"text":"Visiting Trader","color":"green"}',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:jungle"},Offers:{Recipes:[]}}
execute at @e[tag=ob.trader_spawn] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;65280],FadeColors:[I;16777215]}]}}}}

scoreboard players set @s cob.trader 0

execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.chicken matches 1.. run function obs:crate/chicken
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.pig matches 1.. run function obs:crate/pig
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.cow matches 1.. run function obs:crate/cow
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.llama matches 1.. run function obs:crate/llama
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.goat matches 1.. run function obs:crate/goat
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf matches 1.. run function obs:crate/wolf
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.sheep matches 1.. run function obs:crate/sheep
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.camel matches 1.. run function obs:crate/camel
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.cat matches 1.. run function obs:crate/cat

kill @e[tag=ob.trader_spawn]