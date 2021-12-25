#MADE BY SAM, YT: Sammster 10, XBOX: Sammster 10 YT, DISCORD: Sam.#9999, DISCORD SERVER: discord.gg/9S6K9E5
tag @s[scores={AFK_Soft=1}] remove AFK
scoreboard players reset @s[scores={AFK_Soft=1}] AFK_Timer
scoreboard players reset @s[scores={AFK_Soft=1}] AFK2
scoreboard players reset @s[scores={AFK_Soft=1}] AFK_Soft

scoreboard players add @s AFK_Timer 1
scoreboard players add @s AFK2 0
scoreboard players operation @s[scores={AFK2=!1000000000}] AFK2 = @s AFK_Timer

scoreboard players operation a AFK2 = AFK_Timer AFK3
scoreboard players operation a AFK2 *= b AFK2
scoreboard players operation @s[scores={AFK2=!1000000000}] AFK2 -= a AFK2

execute @s[scores={AFK2=0..,AFK2=!1000000000}] ~~~ tag @s add AFK
execute @s[tag=AFK] ~~~ scoreboard players operation @s[scores={AFK2=!1000000000}] AFK2 = mode AFK3

execute @s[tag=AFK,scores={AFK2=1}] ~~~ scoreboard players set @s AFK_Timer 0
execute @s[tag=AFK,scores={AFK2=1}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§cUAC ► §6Anti AFK §btemp kicked §d"},{"selector":"@s"},{"text":" §bfor being AFK"}]}
execute @s[tag=AFK,scores={AFK2=1}] ~~~ scoreboard players set @s AFK_Soft 1
execute @s[tag=AFK,scores={AFK2=1}] ~~~ scoreboard players reset @s AFK2
execute @s[tag=AFK,scores={AFK2=1}] ~~~ tag @s remove AFK
execute @s[scores={AFK_Soft=1}] ~~~ event entity @s[scores={AFK_Soft=1}] uac:ban_soft
execute @s[tag=AFK,scores={AFK2=2}] ~~~ scoreboard players set @s AFK2 1000000000
