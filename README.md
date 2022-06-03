# Luashitacast-Profiles
These are my luashitacast profiles for FFXI Ashita v4

I will eventually clean the code/comments/etc and provide a better formatted readme. You can consider these very much in an alpha status however these profiles are able to have the gear sets edited and ran in current retail. Note that a LOT of the gear sets in these job files are copied and pasted and you so will need to edit them for your own use case and gear sets. That is why you might see something like Jhakri gear in the SAM file for example. I edit the sets as I play the jobs and if I do not play it very much it will have very weird looking gear for that job. Along the same lines some jobs I do not play at all the profile will have the bare minimum to work and you will have more things to add to suit your needs. If you do not want to use or do not know how to use a particular set it is best to just leave the set there but remove any/all gear from it. If you delete any set you may get error messages when using the profile.

My intent here is to simply provide a starting point for people to make their own profiles. I created these with MY use in mind but thought to put them out there until someone better with this sort of thing might provide a better structured library of profiles for Ashita v4. So if they are not working for you the way that you want I guess make your own or find another one to use.

Be aware that I use two custom files that need to be in the common folder, gcinclude and gcdisplay. The latter is a just a slighty modified version of Thornys included varhelper.lua, full credit to him for that. I just changed the output to my own style/taste and didnt want to override his default file so I copied it to a seperate file called gcdisplay.

The biggest issue at the moment is that the profiles will not always load properly or even sometimes crash when you first log in or zone in due to some of the called resources not being available yet by the client. If you get any errors/crashes or anything weird on log in or zone in just reload with /lac load or /addon load luashitacast if it crashed to resolve until I figure out a better work around for this, hence the very much in an alpha status statement. For now I have a built in delay on file load so when you log in or reload a file or change jobs it will take a couple seconds to fully load.

There are a couple basic settings in the gcinclude file that are detailed in the comments at the top of that file. Also each job lua has the minimum require sets to function properly, if you are unsure if you want or need to use a particular set just leave that set empty and do not simply delete it completely or you will get errors.

Some of the things that my profiles will do is automatically equip idle regen or refresh gear below a predefined (in the gcinclude file) % amount. The same can be done with DT gear or Pet DT gear as well. It will also auto cancel stoneskin for spell casting and jig. It will also lock in various rings for use such as tele/warp/exp rings.

### Some of the commands you can use in game:

/rrset - Will force the Reraise set defined in gcinclude to equip

/craftset - Will force the Crafting set defined in gcinclude to equip

/fishset - Will force the Fishing set defined in gcinclude to equip

/drain - Will use Drain II if you have access to it and its not on cool down, else it will cast Drain if you have it and not on cooldown. This really just saves you one in game macro as I chose to not include Drain III here because that has very specific timing uses.

/aspir - Same as /drain but for aspir spells, order in which it will try and use is Aspir III > Aspir II > Aspir checking for availability and cooldown for each

/proc - I have specific low dmg output sets for SAM and NIN that are activated with this toggle, intended to kill things slowly for procs like in abyssea or vagary

/th - Turn TH gear lock on and off for THF/NIN TH gear set found in the job lua, for BLU it will put TH gear on for Dream Flower, Subduction and A. Burst. For any other job it will look for a TH gear set inside that job lua and equip it for 10 seconds.

/dt - Will equip the dt set you define in the individual job file

/kite - Will equip the movement set you define in the individual job file to stay on

/warpring - Will equip and then use your warp ring. Does not currently check for cooldown or unequip for you but it will equip if overriden by something outside of your idle sets (WS sets for example)

/telering - Same thing as warp ring except for your teleport rings, you define which one you own in the gcinclude file

/meleeset - Each of my job files have a default, hybrid, and acc TP and WS set. This will cycle through which one you want to use

/tankset - For RUN and PLD only right now, allows a tank set to over right the meleeset you may be using for more specific tanking set control

/nukeset - Each of my job files have a default and acc nuking set. This will cycle through which one you want to use

/elecycle - This will cycle a variable through all the elements and allow me to cast a nuke/weather/helix of that same element very easily using the same macro

/nuke # - Will cast the teir nuke of the element that /elecycle is currently on (e.g. /nuke 6 will attempt to cast FIRE VI if elecycle on fire)

/helix - Will cast the helix (II if sch main job) of the element that /elecycle is currently on (e.g. will attempt to cast pyrohelix if elecycle on fire)

/weather - Will cast the weatherspell (II if sch main job) of the element that /elecycle is currently on (e.g. will attempt to cast firestorm if elecycle on fire)

/burst - Will use burst nuke/helix sets over regular sets if toggle on

/death - Will force equip your death set on BLM

/weapon - This will force staff to stay equipped for BLM or SCH jobs for TP use

/fight - This will prevent TP loss on mage jobs thats sometimes melee, BRD and RDM for now

/pupmode - Will cycle through my tank, melee, rng, mage gear TP sets on PUP main

/forcestring - Will force harp on BRD although I just use paeon for my dummy songs I left this variable available

/cormsg - When playing cor messages will appear telling you lucky/unlucky, use this to toggle off or can set to off as default inside the COR.lua

/siphon - When on SMN this will cast the spirit matching the day and use siphon, if you had an avatar out to start with it will recast that avatar