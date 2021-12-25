execute @s[tag=staffstatus] ~~~ scoreboard players add aafkmtoggledummy AAFKM 1
execute @s[tag=staffstatus] ~~~ scoreboard players operation @a AAFKM = aafkmtoggledummy AAFKM

#turn on
execute @s[tag=staffstatus,scores={AAFKM=1}] ~~~ scoreboard players set aafkmtoggledummy aafkmtoggle 1
execute @s[tag=staffstatus,scores={AAFKM=1}] ~~~ scoreboard players operation @a aafkmtoggle = aafkmtoggledummy aafkmtoggle
execute @s[tag=staffstatus,scores={AAFKM=1}] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-AFK §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=staffstatus,scores={has_xx=0,AAFKM=1}] {"rawtext":[{"text":"§¶§cUAC ► §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute @s[tag=staffstatus,scores={AAFKM=2}] ~~~ scoreboard players set aafkmtoggledummy aafkmtoggle 0
execute @s[tag=staffstatus,scores={AAFKM=2}] ~~~ scoreboard players operation @a aafkmtoggle = aafkmtoggledummy aafkmtoggle
execute @s[tag=staffstatus,scores={AAFKM=2}] ~~~ tellraw @a[tag=staffstatus] {"rawtext":[{"text":"§¶§cUAC §¶§b► §6Anti-AFK §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=staffstatus,scores={AAFKM=2}] ~~~ scoreboard players set aafkmtoggledummy AAFKM 0
#Deny Nonstaff
execute @s[tag=!staffstatus] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cUAC §¶§b► Access §cDENIED§7! §bOnly staff can use this command"}]}
execute @s[tag=!staffstatus] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=staffstatus] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27
