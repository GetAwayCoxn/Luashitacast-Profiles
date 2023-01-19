# Luashitacast-Profiles
These are my luashitacast profiles for FFXI Ashita v4, all jobs available, built for current retail. Keep in mind I made these for myself and I am simply sharing them for others to have at least a good starting off point if they want since Luashitacast and Ashita v4 in general is so new and there is not a widely available library of different profiles yet.

## Overview:

First, a LOT of the gear sets in these job files are copied and pasted and you so will need to edit them for your own use case and gear sets. That is why you might see something like BLM gear in the SAM file for example. I edit the sets as I play the jobs and if I do not play it very much it will have very weird looking gear sets for that job. Along the same lines some jobs I do not play at all (lolwhm) the profile will have the bare minimum to work and you will have more things to add to suit your needs. If you do not want to use or do not know how to use a particular set it is best to just leave the set there but remove any/all gear from it. If you delete any set you may get error messages when using the profile. I encourage anyone using these profiles to generate an issue here on the github repository for issues/recommendations/requests/etc.

Second, be aware that I use two custom files that need to be in your Ashita/config/addons/luashitacast/common/ folder, gcinclude.lua and gcdisplay.lua. The latter is a just a slighty modified version of Thornys included varhelper.lua, full credit to him for that. I just changed the output to my own style/taste and didnt want to override his default file so I copied it to a seperate file called gcdisplay.

Third, there are several settings that can be set globally in the gcinclude.lua file. Those settings are at the top of the file and there are notes in the file to explain more and give examples. Almost all of those settings can be overridden in any job file if a particular job needs a different default for some reason. There are also global sets in the gcinclude.lua however those are not meant to be overridden currently and truly are global to all jobs and characters on your account at this time. I am talking about things like the crafting set and fishing set for example.

Last, I am leaving this note here although this has not been an issue for me in a long time. The stability around the profiles loading when the equiped gear has not fully loaded seems better after I put in a two second delay. The big thing here is try not to change jobs and zone immediately, also dont just zone immediately on first log in. Zoning out during that very short window could cause the luashitacast addon to crash, basically if you do not see the text overlay on your screen showing you your basic job info and the status of your meleeset etc., then try not to zone. If you get any errors/crashes or anything weird on log in or on zone just reload with /lac load or /addon load luashitacast if the addon itself crashed.

## Quick Summary:

Some of the things that my profiles will do is automatically equip idle regen or refresh gear below a predefined % amount. The same can be done with DT gear or Pet DT gear as well. You can customize this % amounts globally in the gcinclude file or on a per job basis in your job file. These profiles will also auto cancel stoneskin for spell casting and spectral jig/sneak. They will lock in various rings for use such as tele/warp/exp rings. They will also do things like abort a WS before the gear swaps in cases where you may be amnesia'd or what not so you dont get whacked in your WS gear when your not even actually doing the WS. All jobs have basic TH gear functionality.

Several jobs have very specific tools as well. For example COR will display lucky/unlucky numbers when you roll and this can also be turned off. BLU has loads of custom stuff like a specific Cruel Joke "mode" and set. PLD and RUN have special tanking sets and spell interupt modes. The mage jobs have an option to lock your weapon for TP use and other mage jobs have full on melee sets/modes, etc.

## Things in the works:

- [ ] I'll sort out some automatic ninja shadows canceling in the near future
- [ ] Add a similar function to prevent swapping gear for spells if your silenced/terror'd/etc like I do for WS's
- [X] Thinking about adding a distance check to non-ranged WS's to avoid TP loss
- [ ] Will add to all jobs all relic gear JA checks/sets, so far been adding as I go, need to just do them all
- [ ] Thinking about updating all commands to have '/gc' requirement to prevent conflicts since there are alot now
- [X] Organize the commands in this readme better
- [ ] Add weather checks to my /siphon function on SMN

# Commands

## All Jobs

|**Command**|**Description**|
|------------:|:---|
|/gcmessages|Will toggle the chat messages when using various commands, default to off, some messages will always show|
|/wsdistance|Will toggle whether or not to apply distance check to non-ranged WS's, default is 4 yalms since I am a taru, can update in gcinclude.settings to adjust for your liking, can also add a number to this command to update on the fly in case of fighting larger mob etc. (example: /wsdistance 6)|
|/th|TH gear sets are in each job lua, this will force those sets while engaged or casting a spell or ranged attacks|
|/dt|Will equip the dt set you define in the individual job file|
|/kite|Will equip the movement set you define in the individual job file to stay on even over DT gear|
|/warpring|Will equip and then use your warp ring. Does not currently check for cooldown|
|/telering|Same thing as warp ring except for your teleport ring|
|/meleeset|Each of the job files have a default, hybrid, and acc TP and WS set. This will cycle through which one you want to use|
|/rrset|Will force the Reraise set defined in gcinclude to equip|
|/craftset|Will force the Crafting set defined in gcinclude to equip|
|/fishset|Will force the Fishing set defined in gcinclude to equip|
|/zeniset|Will force the Zeni set defined in gcinclude to equip|

## Job Specific Commands

|**Command**|**Description**|
|------------:|:---|
|/proc|I have specific low dmg output sets for SAM and NIN that are activated with this toggle, intended to kill things slowly for procs like in abyssea or vagary|
|/tankset|For RUN and PLD only right now, allows a tank set to over right the meleeset you may be using for more specific tanking set control|
|/sir|For RUN and PLD only right now, forces spell interupt set|
|/nukeset|Each of the mage job files have a default and acc nuking set. This will cycle through which one you want to use|
|/elecycle|This will cycle a variable through all the elements and allow me to cast a nuke/weather/helix of that same element very easily using the same macro set|
|/nuke #|Will cast the teir nuke of the element that /elecycle is currently on (e.g. /nuke 6 will attempt to cast FIRE VI if elecycle on fire)|
|/helix|Will cast the helix (II if sch main job) of the element that /elecycle is currently on (e.g. will attempt to cast pyrohelix if elecycle on fire)|
|/weather|Will cast the highest teir weatherspell available of the element that /elecycle is currently on (e.g. will attempt to cast firestorm if elecycle on fire)|
|/burst|Will use burst nuke/helix sets over regular sets if toggle on|
|/gcdrain|Will use Drain II if you have access to it and its not on cool down, else it will cast Drain if you have it and not on cooldown. This really just saves you one in game macro as I chose to not include Drain III here because that has very specific timing uses|
|/gcaspir|Same as /drain but for aspir spells, order in which it will try and use is Aspir III > Aspir II > Aspir checking for spell availability and cooldown for each|
|/death|Will force equip your death set on BLM|
|/weapon|This will force staff to stay equipped for BLM,SCH, and GEO jobs for TP/mykyr use|
|/fight|This will prevent TP loss on mage jobs that sometimes melee, BRD, RDM, WHM, and GEO|
|/pupmode|Will cycle through the tank, melee, rng, mage gear TP sets on PUP main|
|/forcestring|Will force harp on BRD although I just use paeon for my dummy songs but I left this toggle available|
|/cormsg|When playing COR messages will appear telling you lucky/unlucky, use this to toggle off or can set to off as default inside the COR.lua|
|/tpgun|When playing COR toggle on or off locking the TP+ gun for savage blade spamming|
|/siphon|When on SMN this will cast the spirit matching the day and use siphon, if you had an avatar out to start with it will recast that avatar|
