# load message
tellraw @a {"text":""}
tellraw @a {"text":"Dice Roll v0.0.1","color":"gold","bold":"true"}

# 右クリック発火用
scoreboard objectives add R_Click minecraft.used:minecraft.carrot_on_a_stick

# dice結果保持用
scoreboard objectives add 1d6 dummy
scoreboard objectives add 1d10 dummy
scoreboard objectives add 1d100 dummy

function rng:_load