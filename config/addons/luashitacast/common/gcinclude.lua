local gcinclude = T{};

--[[
Only edit the next two small sections here. See the readme on my github for more information on usages for my profiles.

These are universal sets for things like doomed or asleep; avoid main/sub/range/ammo here. Also avoid calling out any specific augments on gear in here, merge function doesnt play nice with augments.
The second section is a couple basic settings to decide on whether or not to use you the automatic equiping function of idle regen, idle refresh, DT gear etc.
More details in each section.
]]
gcinclude.sets = T{
	Doomed = { -- this set will equip any time you have the doom status
		Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },
	Holy_Water = { -- update with whatever gear you use for the Holy Water item
		Ring1 = 'Purity Ring',
		Ring2 = 'Blenmot\'s Ring',
    },
	Sleeping = { -- this set will auto equip if you are asleep
    },
	Reraise = { -- this set will try to equip when weakened if AutoGear variable is true below or you can force it with /rrset in game
		Head = 'Crepuscular Helm',
		Body = 'Crepuscular Mail',
    },
	Crafting = { -- this set is meant as a default set for crafting, equip using /craftset, be sure to dbl check what rings you want to use
		Head = 'Midras\'s Helm +1',
		Body = 'Tanner\'s Apron',
		Hands = 'Tanner\'s Gloves',
		Ring1 = 'Artificer\'s Ring',
		Ring2 = 'Craftmaster\'s Ring',
    },
	Zeni = { -- this set is meant as a default set for pictures, equip using /zeniset
		Main = 'Excalipoor',
		Sub = 'Genmei Shield',
		Range = 'Soultrapper 2000',
		Ammo = 'Blank Soulplate',
		Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1';
        Ear1 = 'Eabani Earring',
        Ear2 = 'Domes. Earring',
        Body = 'Nyame Mail',
        Hands = 'Malignance Gloves',
        Ring1 = 'Vengeful Ring',
        Ring2 = 'Ilabrat Ring',
		Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Evasion+15' } },
        Waist = 'Kasiri Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
	Fishing = { -- this set is meant as a default set for fishing, equip using /fishset
		Range = 'Halcyon Rod',
		Ring2 = 'Pelican Ring',
    },
	Warp_Ring = { -- leave alone
		Ring2 = 'Warp Ring',
	},
	Tele_Ring1 = { -- leave alone
		Ring2 = 'Dim. Ring (Dem)',
	},
	Tele_Ring2 = { -- leave alone
		Ring2 = 'Dim. Ring (Holla)',
	},
	Tele_Ring3 = { -- leave alone
		Ring2 = 'Dim. Ring (Mea)',
	},
};
gcinclude.settings = {
	AutoGear = true; --set to false if you dont want DT/Regen/Refresh/PetDT gear to come on automatically at the defined %'s here
	RegenGearHPP = 60; -- set HPP to have your idle regen set to come on
	RefreshGearMPP = 70; -- set MPP to have your idle refresh set to come on
	DTGearHPP = 40; -- set HPP to have your DT set to come on
	PetDTGearHPP = 50; -- set pet HPP to have your PetDT set to come on
};

--[[
Everything else in this file should not be editted by anyone trying to use my profiles. You really just want to update the various gear sets
in each individual job lua file. Unless you know what you're doing then it is best to leave everything below this line alone, 
the rest here are various functions and arrays etc
]]
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');

gcinclude.Towns = T{'Tavnazian Safehold','Al Zahbi','Aht Urhgan Whitegate','Nashmau','Southern San d\'Oria [S]','Bastok Markets [S]','Windurst Waters [S]','San d\'Oria-Jeuno Airship','Bastok-Jeuno Airship','Windurst-Jeuno Airship','Kazham-Jeuno Airship','Southern San d\'Oria','Northern San d\'Oria','Port San d\'Oria','Chateau d\'Oraguille','Bastok Mines','Bastok Markets','Port Bastok','Metalworks','Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower','Ru\'Lude Gardens','Upper Jeuno','Lower Jeuno','Port Jeuno','Rabao','Selbina','Mhaura','Kazham','Norg','Mog Garden','Celennia Memorial Library','Western Adoulin','Eastern Adoulin'};
gcinclude.LockingRings = T{'Echad Ring', 'Trizek Ring', 'Endorsement Ring', 'Capacity Ring', 'Warp Ring','Facility Ring','Dim. Ring (Dem)','Dim. Ring (Mea)','Dim. Ring (Holla)'};
gcinclude.DistanceWS = T{'Flamming Arrow','Piercing Arrow','Dulling Arrow','Sidewinder','Blast Arrow','Arching Arrow','Empyreal Arrow','Refulgent Arrow','Apex Arrow','Namas Arrow','Jishnu\'s Randiance','Hot Shot','Split Shot','Sniper Shot','Slug Shot','Blast Shot','Heavy Shot','Detonator','Numbing Shot','Last Stand','Coronach','Wildfire','Trueflight','Leaden Salute','Myrkr','Dagan','Moonlight','Starlight'};
gcinclude.BstPetAttack = T{'Foot Kick','Whirl Claws','Big Scissors','Tail Blow','Blockhead','Sensilla Blades','Tegmina Buffet','Lamb Chop','Sheep Charge','Pentapeck','Recoil Dive','Frogkick','Queasyshroom','Numbshroom','Shakeshroom','Nimble Snap','Cyclotail','Somersault','Tickling Tendrils','Sweeping Gouge','Grapple','Double Claw','Spinning Top','Suction','Tortoise Stomp','Power Attack','Rhino Attack','Razor Fang','Claw Cyclone','Crossthrash','Scythe Tail','Ripper Fang','Chomp Rush','Pecking Flurry','Sickle Slash','Mandibular Bite','Wing Slap','Beak Lunge','Head Butt','Wild Oats','Needle Shot','Disembowel','Extirpating Salvo','Mega Scissors','Back Heel','Hoof Volley','Fluid Toss','Fluid Spread'};
gcinclude.BstPetMagicAttack = T{'Gloom Spray','Fireball','Acid Spray','Molting Plumage','Cursed Sphere','Nectarous Deluge','Charged Whisker','Nepenthic Plunge'};
gcinclude.BstPetMagicAccuracy = T{'Toxic Spit','Acid Spray','Leaf Dagger','Venom Spray','Venom','Dark Spore','Sandblast','Dust Cloud','Stink Bomb','Slug Family','Intimidate','Gloeosuccus','Spider Web','Filamented Hold','Choke Breath','Blaster','Snow Cloud','Roar','Palsy Pollen','Spore','Brain Crush','Choke Breath','Silence Gas','Chaotic Eye','Sheep Song','Soporific','Predatory Glare','Sudden Lunge','Numbing Noise','Jettatura','Bubble Shower','Spoil','Scream','Noisome Powder','Acid Mist','Rhinowrecker','Swooping Frenzy','Venom Shower','Corrosive Ooze','Spiral Spin','Infrasonics','Hi-Freq Field','Purulent Ooze','Foul Waters','Sandpit','Infected Leech','Pestilent Plume'};
gcinclude.SmnSkill = T{'Shining Ruby','Glittering Ruby','Crimson Howl','Inferno Howl','Frost Armor','Crystal Blessing','Aerial Armor','Hastega II','Fleet Wind','Hastega','Earthen Ward','Earthen Armor','Rolling Thunder','Lightning Armor','Soothing Current','Ecliptic Growl','Heavenward Howl','Ecliptic Howl','Noctoshield','Dream Shroud','Altana\'s Favor','Reraise','Reraise II','Reraise III','Raise','Raise II','Raise III','Wind\'s Blessing'};
gcinclude.SmnMagical = T{'Searing Light','Meteorite','Holy Mist','Inferno','Fire II','Fire IV','Meteor Strike','Conflag Strike','Diamond Dust','Blizzard II','Blizzard IV','Heavenly Strike','Aerial Blast','Aero II','Aero IV','Wind Blade','Earthen Fury','Stone II','Stone IV','Geocrush','Judgement Bolt','Thunder II','Thunder IV','Thunderstorm','Thunderspark','Tidal Wave','Water II','Water IV','Grand Fall','Howling Moon','Lunar Bay','Ruinous Omen','Somnolence','Nether Blast','Night Terror','Level ? Holy'};
gcinclude.SmnHealing = T{'Healing Ruby','Healing Ruby II','Whispering Wind','Spring Water'};
gcinclude.SmnHybrid = T{'Flamming Crush','Burning Strike'};
gcinclude.SmnEnfeebling = T{'Diamond Storm','Sleepga','Shock Squall','Slowga','Tidal Roar','Pavor Nocturnus','Ultimate Terror','Nightmare','Mewing Lullaby','Eerie Eye'};
gcinclude.BluMagPhys = T{'Foot Kick','Sprout Smack','Wild Oats','Power Attack','Queasyshroom','Battle Dance','Feather Storm','Helldive','Bludgeon','Claw Cyclone','Screwdriver','Grand Slam','Smite of Rage','Pinecone Bomb','Jet Stream','Uppercut','Terror Touch','Mandibular Bite','Sickle Slash','Dimensional Death','Spiral Spin','Death Scissors','Seedspray','Body Slam','Hydro Shot','Frenetic Rip','Spinal Cleave','Hysteric Barrage','Asuran Claws','Cannonball','Disseverment','Ram Charge','Vertical Cleave','Final Sting','Goblin Rush','Vanity Dive','Whirl of Rage','Benthic Typhoon','Quad. Continuum','Empty Thrash','Delta Thrust','Heavy Strike','Quadrastrike','Tourbillion','Amorphic Spikes','Barbed Crescent','Bilgestorm','Bloodrake','Glutinous Dart','Paralyzing Triad','Thrashing Assault','Sinker Drill','Sweeping Gouge','Saurian Slide'};
gcinclude.BluMagDebuff = T{'Filamented Hold','Cimicine Discharge','Demoralizing Roar','Venom Shell','Light of Penance','Sandspray','Auroral Drape','Frightful Roar','Enervation','Infrasonics','Lowing','CMain Wave','Awful Eye','Voracious Trunk','Sheep Song','Soporific','Yawn','Dream Flower','Chaotic Eye','Sound Blast','Blank Gaze','Stinking Gas','Geist Wall','Feather Tickle','Reaving Wind','Mortal Ray','Absolute Terror','Blistering Roar'};
gcinclude.BluMagStun = T{'Head Butt','Frypan','Tail Slap','Sub-zero Smash','Sudden Lunge'};
gcinclude.BluMagBuff = T{'Cocoon','Refueling','Feather Barrier','Memento Mori','Zephyr Mantle','Warm-Up','Amplification','Triumphant Roar','Saline Coat','Reactor Cool','Plasma Charge','Regeneration','Animating Wail','Battery Charge','Winds of Promy.','Barrier Tusk','Orcish Counterstance','Pyric Bulwark','Nat. Meditation','Restoral','Erratic Flutter','Carcharian Verve','Harden Shell','Mighty Guard'};
gcinclude.BluMagSkill = T{'Metallic Body','Diamondhide','Magic Barrier','Occultation','Atra. Libations'};
gcinclude.BluMagDiffus = T{'Erratic Flutter','Carcharian Verve','Harden Shell','Mighty Guard'};
gcinclude.BluMagCure = T{'Pollen','Healing Breeze','Wild Carrot','Magic Fruit','Plenilune Embrace'};
gcinclude.BluMagEnmity = T{'Actinic Burst','Exuviation','Fantod','Jettatura','Temporal Shift'};
gcinclude.BluMagTH = T{'Actinic Burst','Dream Flower','Subduction'};
gcinclude.Elements = T{'Thunder', 'Blizzard', 'Fire', 'Stone', 'Aero', 'Water', 'Light', 'Dark'};
gcinclude.HelixSpells = T{'Ionohelix', 'Cryohelix', 'Pyrohelix', 'Geohelix', 'Anemohelix', 'Hydrohelix', 'Luminohelix', 'Noctohelix'};
gcinclude.StormSpells = T{'Thunderstorm', 'Hailstorm', 'Firestorm', 'Sandstorm', 'Windstorm', 'Rainstorm', 'Aurorastorm', 'Voidstorm'};
gcinclude.NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Katon: San', 'Hyoton: Ichi', 'Hyoton: Ni', 'Hyoton: San', 'Huton: Ichi', 'Huton: Ni', 'Huton: San', 'Doton: Ichi', 'Doton: Ni', 'Doton: San', 'Raiton: Ichi', 'Raiton: Ni', 'Raiton: San', 'Suiton: Ichi', 'Suiton: Ni', 'Suiton: San'};
gcinclude.Rolls = T{{'Fighter\'s Roll',5,9}, {'Monk\'s Roll',3,7}, {'Healer\'s Roll',3,7}, {'Corsair\'s Roll',5,9}, {'Ninja Roll',4,8},{'Hunter\'s Roll',4,8}, {'Chaos Roll',4,8}, {'Magus\'s Roll',2,6}, {'Drachen Roll',4,8}, {'Choral Roll',2,6},{'Beast Roll',4,8}, {'Samurai Roll',2,6}, {'Evoker\'s Roll',5,9}, {'Rogue\'s Roll',5,9}, {'Warlock\'s Roll',4,8},
	{'Puppet Roll',3,7}, {'Gallant\'s Roll',3,7}, {'Wizard\'s Roll',5,9}, {'Dancer\'s Roll',3,7}, {'Scholar\'s Roll',2,6},{'Naturalist\'s Roll',3,7}, {'Runeist\'s Roll',4,8}, {'Bolter\'s Roll',3,9}, {'Caster\'s Roll',2,7}, {'Courser\'s Roll',3,9},{'Blitzer\'s Roll',4,9}, {'Tactician\'s Roll',5,8}, {'Allies\' Roll',3,10}, {'Miser\'s Roll',5,7},
	{'Companion\'s Roll',2,10},{'Avenger\'s Roll',4,8},}; -- {name,lucky,unlucky}
gcinclude.RRSET = false;
gcinclude.CraftSet = false;
gcinclude.ZeniSet = false;
gcinclude.FishSet = false;
gcinclude.CORmsg = true;

function gcinclude.SetAlias()
	local player = gData.GetPlayer();

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /dt /lac fwd dt');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /kite /lac fwd kite');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /th /lac fwd th');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /meleeset /lac fwd meleeset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /aspir /lac fwd aspir');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /drain /lac fwd drain');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /warpring /lac fwd warpring');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /telering /lac fwd telering');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /rrset /lac fwd rrset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /craftset /lac fwd craftset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /zeniset /lac fwd zeniset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /fishset /lac fwd fishset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /cormsg /lac fwd cormsg');
	if (player.MainJob == 'RDM') or (player.MainJob == 'BLM') or (player.MainJob == 'SCH') or (player.MainJob == 'GEO') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /nukeset /lac fwd nukeset');
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /burst /lac fwd burst');
		if (player.MainJob == 'BLM') or (player.MainJob == 'SCH') then
			AshitaCore:GetChatManager():QueueCommand(-1, '/alias /weapon /lac fwd weapon');
			AshitaCore:GetChatManager():QueueCommand(-1, '/alias /elecycle /lac fwd elecycle');
			AshitaCore:GetChatManager():QueueCommand(-1, '/alias /helix /lac fwd helix');
			AshitaCore:GetChatManager():QueueCommand(-1, '/alias /weather /lac fwd weather');
			AshitaCore:GetChatManager():QueueCommand(-1, '/alias /nuke /lac fwd nuke');
			if (player.MainJob == 'BLM') then
				AshitaCore:GetChatManager():QueueCommand(-1, '/alias /death /lac fwd death');
			end
		end
	end
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') or (player.MainJob == 'GEO') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /fight /lac fwd fight');
	end
	if (player.MainJob == 'PLD') or (player.MainJob == 'RUN') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sir /lac fwd sir');
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /tankset /lac fwd tankset');
	end
	if (player.MainJob == 'SAM') or (player.MainJob == 'NIN') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /proc /lac fwd proc');
	end
	if (player.MainJob == 'PUP') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pupmode /lac fwd pupmode');
	end
	if (player.MainJob == 'BRD') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /forcestring /lac fwd forcestring');
	end
	if (player.MainJob == 'COR') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /tpgun /lac fwd tpgun');
	end
	if (player.MainJob == 'BLU') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /cjmode /lac fwd cj');
	end
	if (player.MainJob == 'SMN') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /siphon /lac fwd siphon');
	end
end

function gcinclude.SetVariables()
	local player = gData.GetPlayer();

	gcdisplay.CreateToggle('DTset', false);
	gcdisplay.CreateToggle('Kite', false);
	gcdisplay.CreateCycle('MeleeSet', {[1] = 'Default', [2] = 'Hybrid', [3] = 'Acc'});
	if (player.MainJob == 'RDM') or (player.MainJob == 'BLM') or (player.MainJob == 'SCH') or (player.MainJob == 'GEO') then
		gcdisplay.CreateToggle('Burst', true);
		gcdisplay.CreateCycle('NukeSet', {[1] = 'Power', [2] = 'Macc',});
		if (player.MainJob == 'BLM') or (player.MainJob == 'SCH') then
			gcdisplay.CreateCycle('Weapon', {[1] = 'Club', [2] = 'Staff'});
			gcdisplay.CreateCycle('Element', {[1] = 'Thunder', [2] = 'Blizzard', [3] = 'Fire', [4] = 'Stone', [5] = 'Aero', [6] = 'Water', [7] = 'Light', [8] = 'Dark'});
			if (player.MainJob == 'BLM') then
				gcdisplay.CreateToggle('Death', false);
			end
		end
	end
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') or (player.MainJob == 'GEO') then
		gcdisplay.CreateToggle('Fight', false);
	end
	if (player.MainJob == 'PLD') or (player.MainJob == 'RUN') then
		gcdisplay.CreateToggle('SIR', false);
		gcdisplay.CreateCycle('TankSet', {[1] = 'Main', [2] = 'MEVA', [3] = 'None'});
	end
	if (player.MainJob == 'THF') or (player.MainJob == 'BLU') or (player.MainJob == 'NIN') then
		gcdisplay.CreateToggle('TH', false);
	end
	if (player.MainJob == 'SAM') or (player.MainJob == 'NIN') then
		gcdisplay.CreateToggle('PROC', false);
	end
	if (player.MainJob == 'PUP') then
		gcdisplay.CreateCycle('PupMode', {[1] = 'Tank', [2] = 'Melee', [3] = 'Ranger', [4] = 'Mage'});
	end
	if (player.MainJob == 'BRD') then
		gcdisplay.CreateToggle('String', false);
	end
	if (player.MainJob == 'COR') then
		gcdisplay.CreateToggle('TPgun', false);
	end
	if (player.MainJob == 'BLU') then
		gcdisplay.CreateToggle('CJmode', false);
	end
end

function gcinclude.SetCommands(args)
	local player = gData.GetPlayer();

	if (args[1] == 'dt') then
		gcdisplay.AdvanceToggle('DTset');
    elseif (args[1] == 'meleeset') then
		gcdisplay.AdvanceCycle('MeleeSet');
	elseif (args[1] == 'kite') then
		gcdisplay.AdvanceToggle('Kite');
	elseif (args[1] == 'aspir') then
		gcinclude.DoAspir();
	elseif (args[1] == 'drain') then
		gcinclude.DoDrain();
	elseif (args[1] == 'warpring') then
		gcinclude.DoWarpRing();
	elseif (args[1] == 'telering') then
		gcinclude.DoTeleRing();
	elseif (args[1] == 'rrset') then
		if gcinclude.RRSET == true then
			gcinclude.RRSET = false;
		else
			gcinclude.RRSET = true;
		end
	elseif (args[1] == 'craftset') then
		if gcinclude.CraftSet == true then
			gcinclude.CraftSet = false;
		else
			gcinclude.CraftSet = true;
		end
	elseif (args[1] == 'zeniset') then
		if gcinclude.ZeniSet == true then
			gcinclude.ZeniSet = false;
		else
			gcinclude.ZeniSet = true;
		end
	elseif (args[1] == 'fishset') then
		if gcinclude.FishSet == true then
			gcinclude.FishSet = false;
		else
			gcinclude.FishSet = true;
		end
	elseif (args[1] == 'cormsg') then
		if gcinclude.CORmsg == true then
			gcinclude.CORmsg = false;
			print(chat.header('GCinclude'):append(chat.message('COR Roll message will no longer show')));
		else
			gcinclude.CORmsg = true;
			print(chat.header('GCinclude'):append(chat.message('COR Roll message will now show')));
		end
    end
	if (player.MainJob == 'RDM') or (player.MainJob == 'BLM') or (player.MainJob == 'SCH') or (player.MainJob == 'GEO') then
		if (args[1] == 'nukeset') then
			gcdisplay.AdvanceCycle('NukeSet');
		elseif (args[1] == 'burst') then
			gcdisplay.AdvanceToggle('Burst');
		end
		if (player.MainJob == 'BLM') or (player.MainJob == 'SCH') then
			if (args[1] == 'weapon') then
				gcdisplay.AdvanceCycle('Weapon');
			elseif (args[1] == 'elecycle') then
				gcdisplay.AdvanceCycle('Element');
			elseif (args[1] == 'helix') then
				gcinclude.DoSCHspells('helix');
			elseif (args[1] == 'weather') then
				gcinclude.DoSCHspells('weather');
			elseif (args[1] == 'nuke') then
				gcinclude.DoNukes(args[2]);
			end
			if (player.MainJob == 'BLM') then
				if (args[1] == 'death') then
					gcdisplay.AdvanceToggle('Death');
				end
			end
		end
	end
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') or (player.MainJob == 'GEO') then
		if (args[1] == 'fight') then
			if (gcdisplay.GetToggle('Fight') == false) then
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Main');
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Sub');
				if (player.MainJob == 'RDM') or (player.MainJob == 'GEO') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Range') end
				if (player.MainJob == 'GEO') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Ammo') end
				gcdisplay.AdvanceToggle('Fight');
			else
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Main');
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Sub');
				if (player.MainJob == 'RDM') or (player.MainJob == 'GEO') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Range') end
				if (player.MainJob == 'GEO') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Ammo') end
				gcdisplay.AdvanceToggle('Fight');
			end
		end
	end
	if (player.MainJob == 'PLD') or (player.MainJob == 'RUN') then
		if (args[1] == 'sir') then
			gcdisplay.AdvanceToggle('SIR');
		end
		if (args[1] == 'tankset') then
			gcdisplay.AdvanceCycle('TankSet');
		end
	end
	if (args[1] == 'th') then
		if (player.MainJob == 'THF') or (player.MainJob == 'BLU') or (player.MainJob == 'NIN') then
			gcdisplay.AdvanceToggle('TH');
		else
			AshitaCore:GetChatManager():QueueCommand(-1, '/lac set TH 10');
		end
	end
	if (player.MainJob == 'SAM') or (player.MainJob == 'NIN') then
		if (args[1] == 'proc') then
			gcdisplay.AdvanceToggle('PROC');
		end
	end
	if (player.MainJob == 'PUP') then
		if (args[1] == 'pupmode') then
			gcdisplay.AdvanceCycle('PupMode');
		end
	end
	if (player.MainJob == 'BRD') then
		if (args[1] == 'forcestring') then
			gcdisplay.AdvanceToggle('String');
		end
	end
	if (player.MainJob == 'COR') then
		if (args[1] == 'tpgun') then
			gcdisplay.AdvanceToggle('TPgun');
		end
	end
	if (player.MainJob == 'BLU') then
		if (args[1] == 'cj') then
			gcdisplay.AdvanceToggle('CJmode');
		end
	end
	if (player.MainJob == 'SMN') then
		if (args[1] == 'siphon') then
			gcinclude.DoSiphon();
		end
	end

end

function gcinclude.CheckCommonDebuffs()
	local weakened = gData.GetBuffCount('Weakened');
	local sleep = gData.GetBuffCount('Sleep');
	local doom = (gData.GetBuffCount('Doom'))+(gData.GetBuffCount('Bane'));
	local cover = gData.GetBuffCount('Cover');

	if (sleep >= 1) then gFunc.EquipSet(gcinclude.sets.Sleeping) end
	if (doom >= 1) then	gFunc.EquipSet(gcinclude.sets.Doomed) end
	if (weakened >= 1) then gFunc.EquipSet(gcinclude.sets.Reraise) end
end

function gcinclude.CheckAbilityRecast(check)
	local RecastTime = 0;

	for x = 0, 31 do
		local id = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimerId(x);
		local timer = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimer(x);

		if ((id ~= 0 or x == 0) and timer > 0) then
			local ability = AshitaCore:GetResourceManager():GetAbilityByTimerId(id);
			if ability == nil then return end
			if (ability.Name[1] == check) and (ability.Name[1] ~= 'Unknown') then
				RecastTime = timer;
			end
		end
	end

	return RecastTime;
end

function gcinclude.CheckLockingRings()
	local rings = gData.GetEquipment();
	if (rings.Ring1 ~= nil) and (gcinclude.LockingRings:contains(rings.Ring1.Name)) then
		local tempRing1 = rings.Ring1.Name;
		gFunc.Equip('Ring1', tempRing1);
	end
	if (rings.Ring2 ~= nil) and (gcinclude.LockingRings:contains(rings.Ring2.Name)) then
		local tempRing2 = rings.Ring2.Name;
		gFunc.Equip('Ring2', tempRing2);
	end
end

function gcinclude.SetTownGear()
	local zone = gData.GetEnvironment();
	local rings = gData.GetEquipment();

	if (zone.Area ~= nil) and (gcinclude.Towns:contains(zone.Area)) then
		gFunc.EquipSet(sets.Town);
	end
end

function gcinclude.SetRegenRefreshGear()
	if gcinclude.settings.AutoGear == false then return end

	local player = gData.GetPlayer();
	local pet = gData.GetPet();
	if (player.Status == 'Idle') then
		if (player.HPP < gcinclude.settings.RegenGearHPP ) then
			gFunc.EquipSet(sets.Idle_Regen);
		end
		if (player.MPP < gcinclude.settings.RefreshGearMPP ) then
			gFunc.EquipSet(sets.Idle_Refresh);
		end
	end
	if (player.HPP < gcinclude.settings.DTGearHPP) then
		gFunc.EquipSet(sets.Dt);
	end
	if pet ~= nil then
		if (pet.HPP < gcinclude.settings.PetDTGearHPP) then
			gFunc.EquipSet(sets.Pet_Dt);
		end
	end
end

function gcinclude.CheckWsBailout()
	local player = gData.GetPlayer();
	local ws = gData.GetAction();
	local target = gData.GetActionTarget();
	local sleep = gData.GetBuffCount('Sleep');
	local petrify = gData.GetBuffCount('Petrification');
	local stun = gData.GetBuffCount('Stun');
	local terror = gData.GetBuffCount('Terror');
	local amnesia = gData.GetBuffCount('Amnesia');

	if (sleep+petrify+stun+terror+amnesia >= 1) or (player.TP <= 999) then
		return false;
	else
		return true;
	end
	gcdisplay.Update();
end

function gcinclude.CheckSpellBailout()
	local sleep = gData.GetBuffCount('Sleep');
	local petrify = gData.GetBuffCount('Petrification');
	local stun = gData.GetBuffCount('Stun');
	local terror = gData.GetBuffCount('Terror');
	local silence = gData.GetBuffCount('Silence');

	if (sleep+petrify+stun+terror+silence >= 1) then
		return false;
	else
		return true;
	end
	gcdisplay.Update();
end

function gcinclude.DoWarpRing()
	AshitaCore:GetChatManager():QueueCommand(1, '/lac set Warp_Ring');
	local function usering()
		local function forceidleset()
			AshitaCore:GetChatManager():QueueCommand(1, '/lac set Idle');
		end
		AshitaCore:GetChatManager():QueueCommand(1, '/item "Warp Ring" <me>');
		forceidleset:once(8);
	end
	
	usering:once(11);
	
end

function gcinclude.DoTeleRing()
	AshitaCore:GetChatManager():QueueCommand(1, '/lac set Tele_Ring1');
	AshitaCore:GetChatManager():QueueCommand(1, '/lac set Tele_Ring2');
	AshitaCore:GetChatManager():QueueCommand(1, '/lac set Tele_Ring3');
	
	local function usering()
		local ring = gData.GetEquipment();
		local function forceidleset()
			AshitaCore:GetChatManager():QueueCommand(1, '/lac set Idle');
		end
		AshitaCore:GetChatManager():QueueCommand(1, '/item "' .. ring.Ring2.Name .. '" <me>');	
		forceidleset:once(8);
	end
	usering:once(11);
end

function gcinclude.DoNukes(tier)
	local cast = gcdisplay.GetCycle('Element');
	AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. cast .. ' ' .. tier .. '" <t>');
end

function gcinclude.DoCORmsg(roll)
	if gcinclude.CORmsg == false then return end

	for n = 1, #gcinclude.Rolls do
		if gcinclude.Rolls[n][1] == roll then
			print(chat.header('GCinclude'):append('[' .. chat.warning(roll) .. ']' .. '  [Lucky: ' .. chat.success(gcinclude.Rolls[n][2]) .. ']  [Unlucky: ' .. chat.error(gcinclude.Rolls[n][3]) .. ']'));
		end
	end
end

function gcinclude.DoAspir()
	local player = AshitaCore:GetMemoryManager():GetPlayer();
	local recast1 = AshitaCore:GetMemoryManager():GetRecast():GetSpellTimer(247);
	local recast2 = AshitaCore:GetMemoryManager():GetRecast():GetSpellTimer(248);
	local recast3 = AshitaCore:GetMemoryManager():GetRecast():GetSpellTimer(881);
	
	if (player:GetMainJob() == 4 and player:GetJobPointsSpent(4) > 550) or (player:GetMainJob() == 21 and player:GetJobPointsSpent(21) > 550) then
		if (recast3 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir III" <t>');
		elseif (recast2 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir II" <t>');
		elseif (recast1 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir" <t>');
		end
	elseif (player:GetMainJob() == 4 and player:GetMainJobLevel() >= 83) or (player:GetMainJob() == 8 and player:GetMainJobLevel() >= 78) or (player:GetMainJob() == 20 and player:GetMainJobLevel() >= 97) or (player:GetMainJob() == 21 and player:GetMainJobLevel() >= 90) then
		if (recast2 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir II" <t>');
		elseif (recast1 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir" <t>');
		end
	elseif (recast1 == 0) then
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "Aspir" <t>');
	end
end

function gcinclude.DoDrain()
	local player = AshitaCore:GetMemoryManager():GetPlayer();
	local recast1 = AshitaCore:GetMemoryManager():GetRecast():GetSpellTimer(245);
	local recast2 = AshitaCore:GetMemoryManager():GetRecast():GetSpellTimer(246);
	
	if (player:GetMainJob() == 8) then
		if (recast2 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Drain II" <t>');
		elseif (recast1 == 0) then
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "Drain" <t>');
		end
	elseif (recast1 == 0) then
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "Drain" <t>');
	end
end

function gcinclude.DoSCHspells(spell)
	local player = gData.GetPlayer();
	local e = gcdisplay.GetCycle('Element');
	local key = 0;
	local cast = 'cast';
	local type = {};
	local target = 'me';

	if (spell == 'helix') then 
		type = gcinclude.HelixSpells;
		target = '<t>';
	elseif (spell == 'weather') then
		type = gcinclude.StormSpells;
		target = '<me>'
	end

	if (player.MainJob == "BLM") then
		if (player.SubJob == "SCH") then
			for k, v in pairs(gcinclude.Elements) do
				if (v == e) then
					key = k;
				end
			end
			for a, b in pairs(type) do
				if (a == key) then
					cast = b;
				end
			end
			AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. cast .. '" ' .. target);
		end
	elseif (player.MainJob == "SCH") then
		for k, v in pairs(gcinclude.Elements) do
			if (v == e) then
				key = k;
			end
		end
		for a, b in pairs(type) do
			if (a == key) then
				cast = b;
			end
		end
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. cast .. ' II" ' .. target);
	end
end

function gcinclude.DoSiphon()
	local recast = gcinclude.CheckAbilityRecast('Elemental Siphon');
	if recast ~= 0 then 
		print(chat.header('GCinclude'):append(chat.warning('Elemental Siphon not available yet!')));
		return;
	end
	local pet = gData.GetPet();
	local oldpet = 'none';
	local spirit = 'none';
	local spirits = {['Firesday'] = 'Fire Spirit', ['Earthsday'] = 'Earth Spirit', ['Watersday'] = 'Water Spirit', ['Windsday'] = 'Air Spirit', ['Iceday'] = 'Ice Spirit', ['Lightningday'] = 'Thunder Spirit', ['Lightsday'] = 'Light Spirit', ['Darksday'] = 'Dark Spirit'};
	local e = gData.GetEnvironment();
	
	local function release()
		AshitaCore:GetChatManager():QueueCommand(1, '/ja "Release" <me>');
	end
	local function siphon()
		AshitaCore:GetChatManager():QueueCommand(1, '/ja "Elemental Siphon" <me>');
	end
	local function castavatar()
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. oldpet .. '" <me>');
	end
	local function castspirit()
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. spirit .. '" <me>');
		siphon:once(4);
		release:once(6);
		if oldpet ~= 'none' then
			castavatar:once(8);
		end
	end

	if pet ~= nil then
		oldpet = pet.Name;
		release:once(1);
	end

	for k,v in pairs(spirits) do
		if k == e.Day then
			if v ~= nil then
				spirit = v;
				castspirit:once(3);
			end
		end
	end
end

function gcinclude.CheckCancels()
	local action = gData.GetAction();
	local sneak = gData.GetBuffCount('Sneak');
	local stoneskin = gData.GetBuffCount('Stoneskin');
	local target = gData.GetActionTarget();
	local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);
	
	local function do_jig()
		AshitaCore:GetChatManager():QueueCommand(1, '/ja "Spectral Jig" <me>');
	end
	local function do_sneak()
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "Sneak" <me>');
	end
	local function do_ss()
		AshitaCore:GetChatManager():QueueCommand(1, '/ma "Stoneskin" <me>');
	end

	if (action.Name == 'Spectral Jig' and sneak ~=0) then
		gFunc.CancelAction();
		AshitaCore:GetChatManager():QueueCommand(1, '/cancel Sneak');
		do_jig:once(1);
	elseif (action.Name == 'Sneak' and sneak ~= 0 and target.Name == me) then
		gFunc.CancelAction();
		AshitaCore:GetChatManager():QueueCommand(1, '/cancel Sneak');
		do_sneak:once(1);
	elseif (action.Name == 'Stoneskin' and stoneskin ~= 0) then
		gFunc.CancelAction();
		AshitaCore:GetChatManager():QueueCommand(1, '/cancel Stoneskin');
		do_ss:once(1);
	end
	gcdisplay.Update();
end

function gcinclude.CheckDefault()

	gcinclude.SetRegenRefreshGear();
	gcinclude.SetTownGear();
    gcinclude.CheckCommonDebuffs();
	gcinclude.CheckLockingRings();
	if (gcinclude.CraftSet == true) then gFunc.EquipSet(gcinclude.sets.Crafting) end
	if (gcinclude.ZeniSet == true) then gFunc.EquipSet(gcinclude.sets.Zeni) end
	if (gcinclude.FishSet == true) then gFunc.EquipSet(gcinclude.sets.Fishing) end
	if (gcinclude.RRSET == true) then gFunc.EquipSet(gcinclude.sets.Reraise) end
	gcdisplay.Update();
end

function gcinclude.Unload()
	gcdisplay.Unload();
end

function gcinclude.Initialize()
	gcdisplay.Initialize();
	gcinclude.SetVariables();
	gcinclude.SetAlias();
end

return gcinclude;