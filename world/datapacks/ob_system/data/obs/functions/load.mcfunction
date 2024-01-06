
scoreboard objectives add cob.y dummy
scoreboard objectives add cob.dirt minecraft.used:minecraft.dirt
scoreboard objectives add cob.netherrack minecraft.used:minecraft.netherrack
scoreboard objectives add cob.endstone minecraft.used:minecraft.end_stone

scoreboard objectives add cob.carrots minecraft.used:minecraft.carrot
scoreboard objectives add cob.meaty minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add cob.sushi minecraft.used:minecraft.dried_kelp

scoreboard objectives add cob.kill_zompig minecraft.killed:minecraft.zombified_piglin

scoreboard objectives add cob.block dummy
scoreboard objectives add cob.trader dummy

scoreboard objectives add cob.camel dummy
scoreboard objectives add cob.cat dummy
scoreboard objectives add cob.cow dummy
scoreboard objectives add cob.sheep dummy
scoreboard objectives add cob.chicken dummy
scoreboard objectives add cob.pig dummy
scoreboard objectives add cob.goat dummy
scoreboard objectives add cob.llama dummy
scoreboard objectives add cob.wolf dummy

scoreboard objectives add cob.phase dummy
scoreboard players add @e[tag=cob.block,limit=1] cob.phase 0

schedule function obs:second 1s