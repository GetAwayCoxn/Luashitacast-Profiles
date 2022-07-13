# Luashitacast-Profiles
These are my luashitacast profiles for FFXI Ashita v4, all jobs available, built for current retail.

## Overview:

Firstly, a LOT of the gear sets in these job files are copied and pasted and you so will need to edit them for your own use case and gear sets. That is why you might see something like Jhakri gear in the SAM file for example. I edit the sets as I play the jobs and if I do not play it very much it will have very weird looking gear sets for that job. Along the same lines some jobs I do not play at all (lolwhm) the profile will have the bare minimum to work and you will have more things to add to suit your needs. If you do not want to use or do not know how to use a particular set it is best to just leave the set there but remove any/all gear from it. If you delete any set you may get error messages when using the profile. I encourage anyone using these profiles to generate an issue here on the github repository for issues/recommendations/requests/etc.

Be aware that I use two custom files that need to be in the common folder, gcinclude and gcdisplay. The latter is a just a slighty modified version of Thornys included varhelper.lua, full credit to him for that. I just changed the output to my own style/taste and didnt want to override his default file so I copied it to a seperate file called gcdisplay.

The biggest issue at the moment is that the profiles will not always load properly or even sometimes crash if you change jobs or log in and then immediately zone. This is especially annoying when you first log in. For now I have a built in delay on file load so when you log in or reload a file or change jobs it will take a couple seconds to fully load. I highly encourage everyone for now to be patient when changing jobs and dont just swap jobs and zone immediately. If you get any errors/crashes or anything weird on log in or zone in just reload with /lac load or /addon load luashitacast if it crashed to resolve until I figure out a better work around for this.

## Summary of Tools:

Some of the things that my profiles will do is automatically equip idle regen or refresh gear below a predefined % amount. The same can be done with DT gear or Pet DT gear as well. You can customize this % amounts globally or on a per job basis. See the notes in the GCinclude file for more info. These profiles will also auto cancel stoneskin for spell casting and spectral jig. They will lock in various rings for use such as tele/warp/exp rings. They will also do things like abort a WS before the gear swaps in cases where you may be amnesia'd or what not so you dont get wacked in your WS gear when your not even actually doing the WS. All jobs have some sort of basic TH gear functionality but THF,BLU, and NIN have specialized uses for this. See below for more.

Some Jobs have very specific tools as well. For example COR will display lucky/unlucky numbers when you roll and this can also be turned off. BLU has loads of custom stuff like a specific Cruel Joke "mode" and set. See below for more.

## Things in the works:

- [ ] I'll sort out some automatic ninja shadows canceling in the near future
- [ ] Add a similar function to prevent swapping gear for spells if your silenced/terror'd/etc like I do for WS's
- [ ] Thinking about adding a distance check to non-ranged WS's to avoid TP loss
- [ ] Will add to all jobs all relic gear JA checks/sets, so far been adding as I go, need to just do them all
- [ ] Thinking about updated all commands to have '/gc' requirement to prevent conflicts since there are alot now
- [ ] Organize the commands in this readme better
- [ ] Add weather checks to my /siphon function on SMN

# Commands (in no particular order yet)

|**Command**|**Description**|
|------------:|:---|
|/rrset|Will force the Reraise set defined in gcinclude to equip|
|/craftset|Will force the Crafting set defined in gcinclude to equip|
|/fishset|Will force the Fishing set defined in gcinclude to equip|
|/zeniset|Will force the Zeni set defined in gcinclude to equip|
|/drain|Will use Drain II if you have access to it and its not on cool down, else it will cast Drain if you have it and not on cooldown. This really just saves you one in game macro as I chose to not include Drain III here because that has very specific timing uses|
|/aspir|Same as /drain but for aspir spells, order in which it will try and use is Aspir III > Aspir II > Aspir checking for spell availability and cooldown for each|
|/proc|I have specific low dmg output sets for SAM and NIN that are activated with this toggle, intended to kill things slowly for procs like in abyssea or vagary|
|/th|TH gear sets are in each job lua. For THF/NIN it will lock that gear set on. For BLU it will put TH gear on for Dream Flower, Subduction and A. Burst currently. For any other job it will look for a TH gear set inside that job lua and equip it for 10 seconds each time you use this command|
|/dt|Will equip the dt set you define in the individual job file|
|/kite|Will equip the movement set you define in the individual job file to stay on even over DT gear|
|/warpring|Will equip and then use your warp ring. Does not currently check for cooldown|
|/telering|Same thing as warp ring except for your teleport ring|
|/meleeset|Each of the job files have a default, hybrid, and acc TP and WS set. This will cycle through which one you want to use|
|/tankset|For RUN and PLD only right now, allows a tank set to over right the meleeset you may be using for more specific tanking set control|
|/sir|For RUN and PLD only right now, forces spell interupt set|
|/nukeset|Each of my job files have a default and acc nuking set. This will cycle through which one you want to use|
|/elecycle|This will cycle a variable through all the elements and allow me to cast a nuke/weather/helix of that same element very easily using the same macro set|
|/nuke #|Will cast the teir nuke of the element that /elecycle is currently on (e.g. /nuke 6 will attempt to cast FIRE VI if elecycle on fire)|
|/helix|Will cast the helix (II if sch main job) of the element that /elecycle is currently on (e.g. will attempt to cast pyrohelix if elecycle on fire)|
|/weather|Will cast the weatherspell (II if sch main job) of the element that /elecycle is currently on (e.g. will attempt to cast firestorm if elecycle on fire)|
|/burst|Will use burst nuke/helix sets over regular sets if toggle on|
|/death|Will force equip your death set on BLM|
|/weapon|This will force staff to stay equipped for BLM,SCH, and GEO jobs for TP/mykyr use|
|/fight|This will prevent TP loss on mage jobs thats sometimes melee, BRD,RDM, and GEO for now|
|/pupmode|Will cycle through my tank, melee, rng, mage gear TP sets on PUP main|
|/forcestring|Will force harp on BRD although I just use paeon for my dummy songs I left this variable available|
|/cormsg|When playing cor messages will appear telling you lucky/unlucky, use this to toggle off or can set to off as default inside the COR.lua|
|/tpgun|When playing cor toggle on or off locking the TP+ gun for savage blade spamming|
|/siphon|When on SMN this will cast the spirit matching the day and use siphon, if you had an avatar out to start with it will recast that avatar|
