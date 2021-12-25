execute @s[tag=staffstatus,scores={aafkmtoggle=1}] ~~~ scoreboard players set AFK_Timer AFK3 300

#Deny Nonstaff
execute @s[tag=!staffstatus] ~~~ tellraw @s[scores={aafkmtoggle=1}] {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ tellraw @a[tag=staffstatus,scores={aafkmtoggle=1}] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti AFK Timer §bhas been set to §25 Minutes §bby §d"},{"selector":"@s"}]}

#check for toggle
execute @s[tag=staffstatus] ~~~ tellraw @s[scores={aafkmtoggle=0}] {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bAnti AFK Module must be enabled before the timer can be changed"}]}
execute @s[tag=staffstatus,scores={aafkmtoggle=0}] ~~~ playsound note.bass @s ~ ~ ~

scoreboard players set @s lstcmd 27
