# tick 実行
execute at @a[scores={R_Click=1..}] run function dice:exec

# リセット
scoreboard players set @a[scores={R_Click=1..}] R_Click 0

