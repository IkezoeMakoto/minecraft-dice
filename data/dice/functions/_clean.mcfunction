function rng:_clean

# scoreboard
scoreboard objectives remove 1d6
scoreboard objectives remove 1d10
scoreboard objectives remove 1d100
scoreboard objectives remove R_Click

tellraw @a {"text":"Dice Roll Clean up!!","color":"gold","bold":"true"}