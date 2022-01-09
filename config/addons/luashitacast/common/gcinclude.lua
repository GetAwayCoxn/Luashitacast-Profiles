local gcinclude = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcauto = gFunc.LoadFile('common\\gcauto.lua');

if (not gcauto) then
	print(chat.header('GCinclude'):append(chat.message('You dont have access to the GCauto file, I have not made this public.')));
	print(chat.header('GCinclude'):append(chat.message('Everything else will work fine. Check the readme.md  file or my github for')));
	print(chat.header('GCinclude'):append(chat.message('more information on functions/uses for these luashitacast profiles.')));
end

--[[
--Universal sets here for things like doomed or asleep; avoid main/sub/range/ammo here
--]]
gcinclude.sets = {
	Dt = {
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
	Doomed = {
		Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },
	Holy_Water = {
		Ring1 = 'Purity Ring',
		Ring2 = 'Blenmot\'s Ring',
    },
	Sleeping = {
    },
	Reraise = {
		Head = 'Twilight Helm',
		Body = 'Twilight Mail',
    },
	Utsu_Precast = {
		Neck = 'Magoraga Beads',
	},
};

--[[
--Tables for table type stuffs, best to leave this alone
--]]
gcinclude.Towns = T{'Tavnazian Safehold','Al Zahbi','Aht Urhgan Whitegate','Nashmau','Southern San d\'Oria [S]','Bastok Markets [S]','Windurst Waters [S]','San d\'Oria-Jeuno Airship','Bastok-Jeuno Airship','Windurst-Jeuno Airship','Kazham-Jeuno Airship','Southern San d\'Oria','Northern San d\'Oria','Port San d\'Oria','Chateau d\'Oraguille','Bastok Mines','Bastok Markets','Port Bastok','Metalworks','Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower','Ru\'Lude Gardens','Upper Jeuno','Lower Jeuno','Port Jeuno','Rabao','Selbina','Mhaura','Kazham','Norg','Mog Garden','Celennia Memorial Library','Western Adoulin','Eastern Adoulin'};
gcinclude.LockingRings = T{'Echad Ring', 'Trizek Ring', 'Endorsement Ring', 'Warp Ring','Facility Ring','Dim. Ring (Dem)','Dim. Ring (Mea)','Dim. Ring (Holla)'};
gcinclude.DistanceWS = T{'Flamming Arrow','Piercing Arrow','Dulling Arrow','Sidewinder','Blast Arrow','Arching Arrow','Empyreal Arrow','Refulgent Arrow','Apex Arrow','Namas Arrow','Jishnu\'s Randiance','Hot Shot','Split Shot','Sniper Shot','Slug Shot','Blast Shot','Heavy Shot','Detonator','Numbing Shot','Last Stand','Coronach','Wildfire','Trueflight','Leaden Salute','Myrkr','Dagan','Moonlight','Starlight',};
gcinclude.BstPetAttack = T{'Foot Kick','Whirl Claws','Big Scissors','Tail Blow','Blockhead','Sensilla Blades','Tegmina Buffet','Lamb Chop','Sheep Charge','Pentapeck','Recoil Dive','Frogkick','Queasyshroom','Numbshroom','Shakeshroom','Nimble Snap','Cyclotail','Somersault','Tickling Tendrils','Sweeping Gouge','Grapple','Double Claw','Spinning Top','Suction','Tortoise Stomp','Power Attack','Rhino Attack','Razor Fang','Claw Cyclone','Crossthrash','Scythe Tail','Ripper Fang','Chomp Rush','Pecking Flurry','Sickle Slash','Mandibular Bite','Wing Slap','Beak Lunge','Head Butt','Wild Oats','Needle Shot','Disembowel','Extirpating Salvo','Mega Scissors','Back Heel','Hoof Volley','Fluid Toss','Fluid Spread'};
gcinclude.BstPetMagicAttack = T{'Gloom Spray','Fireball','Acid Spray','Molting Plumage','Cursed Sphere','Nectarous Deluge','Charged Whisker','Nepenthic Plunge'};
gcinclude.BstPetMagicAccuracy = T{'Toxic Spit','Acid Spray','Leaf Dagger','Venom Spray','Venom','Dark Spore','Sandblast','Dust Cloud','Stink Bomb','Slug Family','Intimidate','Gloeosuccus','Spider Web','Filamented Hold','Choke Breath','Blaster','Snow Cloud','Roar','Palsy Pollen','Spore','Brain Crush','Choke Breath','Silence Gas','Chaotic Eye','Sheep Song','Soporific','Predatory Glare','Sudden Lunge','Numbing Noise','Jettatura','Bubble Shower','Spoil','Scream','Noisome Powder','Acid Mist','Rhinowrecker','Swooping Frenzy','Venom Shower','Corrosive Ooze','Spiral Spin','Infrasonics','Hi-Freq Field','Purulent Ooze','Foul Waters','Sandpit','Infected Leech','Pestilent Plume'};
gcinclude.BluMagPhys = T{'Foot Kick','Sprout Smack','Wild Oats','Power Attack','Queasyshroom','Battle Dance','Feather Storm','Helldive','Bludgeon','Claw Cyclone','Screwdriver','Grand Slam','Smite of Rage','Pinecone Bomb','Jet Stream','Uppercut','Terror Touch','Mandibular Bite','Sickle Slash','Dimensional Death','Spiral Spin','Death Scissors','Seedspray','Body Slam','Hydro Shot','Frenetic Rip','Spinal Cleave','Hysteric Barrage','Asuran Claws','Cannonball','Disseverment','Ram Charge','Vertical Cleave','Final Sting','Goblin Rush','Vanity Dive','Whirl of Rage','Benthic Typhoon','Quad. Continuum','Empty Thrash','Delta Thrust','Heavy Strike','Quadrastrike','Tourbillion','Amorphic Spikes','Barbed Crescent','Bilgestorm','Bloodrake','Glutinous Dart','Paralyzing Triad','Thrashing Assault','Sinker Drill','Sweeping Gouge','Saurian Slide'};
gcinclude.BluMagDebuff = T{'Filamented Hold','Cimicine Discharge','Demoralizing Roar','Venom Shell','Light of Penance','Sandspray','Auroral Drape','Frightful Roar','Enervation','Infrasonics','Lowing','CMain Wave','Awful Eye','Voracious Trunk','Sheep Song','Soporific','Yawn','Dream Flower','Chaotic Eye','Sound Blast','Blank Gaze','Stinking Gas','Geist Wall','Feather Tickle','Reaving Wind','Mortal Ray','Absolute Terror','Blistering Roar'};
gcinclude.BluMagStun = T{'Head Butt','Frypan','Tail Slap','Sub-zero Smash','Sudden Lunge'};
gcinclude.BluMagBuff = T{'Cocoon','Refueling','Feather Barrier','Memento Mori','Zephyr Mantle','Warm-Up','Amplification','Triumphant Roar','Saline Coat','Reactor Cool','Plasma Charge','Regeneration','Animating Wail','Battery Charge','Winds of Promy.','Barrier Tusk','Orcish Counterstance','Pyric Bulwark','Nat. Meditation','Restoral','Erratic Flutter','Carcharian Verve','Harden Shell','Mighty Guard'};
gcinclude.BluMagSkill = T{'Metallic Body','Diamondhide','Magic Barrier','Occultation','Atra. Libations'};
gcinclude.BluMagDiffus = T{'Erratic Flutter','Carcharian Verve','Harden Shell','Mighty Guard'};
gcinclude.BluMagCure = T{'Pollen','Healing Breeze','Wild Carrot','Magic Fruit','Plenilune Embrace'};
gcinclude.BluMagEnmity = T{'Actinic Burst','Exuviation','Fantod','Jettatura','Temporal Shift'};
gcinclude.Elements = T{'Thunder', 'Blizzard', 'Fire', 'Stone', 'Aero', 'Water', 'Light', 'Dark'};
gcinclude.HelixSpells = T{'Ionohelix', 'Cryohelix', 'Pyrohelix', 'Geohelix', 'Anemohelix', 'Hydrohelix', 'Luminohelix', 'Noctohelix'};
gcinclude.StormSpells = T{'Thunderstorm', 'Hailstorm', 'Firestorm', 'Sandstorm', 'Windstorm', 'Rainstorm', 'Aurorastorm', 'Voidstorm'};
gcinclude.NinNukes = T{'Katon: Ichi', 'Katon: Ni', 'Katon: San', 'Hyoton: Ichi', 'Hyoton: Ni', 'Hyoton: San', 'Huton: Ichi', 'Huton: Ni', 'Huton: San', 'Doton: Ichi', 'Doton: Ni', 'Doton: San', 'Raiton: Ichi', 'Raiton: Ni', 'Raiton: San', 'Suiton: Ichi', 'Suiton: Ni', 'Suiton: San'};

--[[
--functions for functiony stuffs, definitely leave this stuff alone
--]]
function gcinclude.SetAlias()
	local player = gData.GetPlayer();

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /dt /lac fwd dt');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /kite /lac fwd kite');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /meleeset /lac fwd meleeset');
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
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /fight /lac fwd fight');
	end
	if (player.MainJob == 'THF') then
		AshitaCore:GetChatManager():QueueCommand(-1, '/alias /th /lac fwd th');
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
end

function gcinclude.SetVariables() --De-clutter this mess
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
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') then
		gcdisplay.CreateToggle('Fight', false);
	end
	if (player.MainJob == 'THF') then
		gcdisplay.CreateToggle('TH', true);
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
end

function gcinclude.SetCommands(args)
	local player = gData.GetPlayer();

	if (args[1] == 'dt') then
		gcdisplay.AdvanceToggle('DTset');
    elseif (args[1] == 'meleeset') then
		gcdisplay.AdvanceCycle('MeleeSet');
	elseif (args[1] == 'kite') then
		gcdisplay.AdvanceToggle('Kite');
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
	if (player.MainJob == 'RDM') or (player.MainJob == 'BRD') then
		if (args[1] == 'fight') then
			if (gcdisplay.GetToggle('Fight') == false) then
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Main');
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Sub');
				if (player.MainJob == 'RDM') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac disable Range') end
				gcdisplay.AdvanceToggle('Fight');
			else
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Main');
				AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Sub');
				if (player.MainJob == 'RDM') then AshitaCore:GetChatManager():QueueCommand(-1, '/lac enable Range') end
				gcdisplay.AdvanceToggle('Fight');
			end
		end
	end
	if (player.MainJob == 'THF') then
		if (args[1] == 'th') then
			gcdisplay.AdvanceToggle('TH');
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
	
	if (gcauto ~= nil) then gcauto.SetCommands(args) end
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
		--if (rings.Ring2 ~= nil) and (rings.Ring2.Name == 'Warp Ring') then --force unequip of warp ring in towns. did it as a check because ForceEquipSet was causing lag hmmm.
			--gFunc.ForceEquipSet(sets.Town);
		--else
			gFunc.EquipSet(sets.Town);
		--end
	end
end

function gcinclude.SetRegenRefreshGear()
	local player = gData.GetPlayer();
	local pet = gData.GetPet();
	if (player.Status == 'Idle') then
		if (player.HPP < 80 ) then
			gFunc.EquipSet(sets.Idle_Regen);
		end
		if (player.MPP < 76 ) then
			gFunc.EquipSet(sets.Idle_Refresh);
		end
		if (player.HPP < 50) then
			gFunc.EquipSet(sets.Dt);
		end
	end
	if pet ~= nil then
		if (pet.HPP < 55) then
			gFunc.EquipSet(sets.Pet_Dt);
		end
	end
end

function gcinclude.CheckBailout()
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
	--[[elseif (tonumber(target.Distance) >= 5) then -- 5 yalms can still cause loss of TP on some mobs
		if (gcinclude.DistanceWS:contains(ws.Name) then

		else
			return false;
		end]]
	else
		return true;
	end
end

function gcinclude.DoNukes(tier)
	local cast = gcdisplay.GetCycle('Element');
	AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. cast .. ' ' .. tier .. '" <t>');
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

function gcinclude.CheckCancels()
	local action = gData.GetAction();
	local sneak = gData.GetBuffCount('Sneak');
	local stoneskin = gData.GetBuffCount('Stoneskin');
	--local function calls to be able to use :once delay method easy
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
	elseif (action.Name == 'Sneak' and sneak ~= 0) then
		gFunc.CancelAction();
		AshitaCore:GetChatManager():QueueCommand(1, '/cancel Sneak');
		do_sneak:once(1);
	elseif (action.Name == 'Stoneskin' and stoneskin ~= 0) then
		gFunc.CancelAction();
		AshitaCore:GetChatManager():QueueCommand(1, '/cancel Stoneskin');
		do_ss:once(1);
	end
end

function gcinclude.CheckDefault()
	if (gcauto ~= nil) then gcauto.Default() end

	gcinclude.SetRegenRefreshGear();
	gcinclude.SetTownGear();
    gcinclude.CheckCommonDebuffs();
	gcinclude.CheckLockingRings();
end

function gcinclude.Unload()
	gcdisplay.Unload();
end

function gcinclude.Initialize()
	gcdisplay.Initialize();
	gcinclude.SetVariables();
	gcinclude.SetAlias();
	if (gcauto ~= nil) then gcauto.Initialize:once(10) end --maybe sort out a better solution with a while loop
end

return gcinclude;