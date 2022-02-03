local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


sets = T{
    Idle = {
        Head = 'Mpaca\'s Cap',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Visucius\'s Mantle',
        Waist = 'Gishdubar Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Idle_Pet = {
        Head = 'Taeon Chapeau',
        Neck = 'Empath Necklace',
        Ear1 = 'Burana Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Taeon Tabard',
        Hands = 'Taeon Gloves',
        Back = 'Visucius\'s Mantle',
        Legs = 'Taeon Tights',
        Feet = 'Telchine Pigaches',
    },
	Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
    },
    Idle_Refresh = {},
	Town = {
        Main = 'Sakpata\'s Fists',
        Range = 'Neo Animator',
        Ammo = 'Automat. Oil +3',
        Head = 'Karagoz Capello +1',
        Body = 'Pitre Tobe +3',
        Hands = 'Malignance Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Niqmaddu Ring',
        Back = 'Visucius\'s Mantle',
        Waist = 'Moonbow Belt',
        Legs = 'Tali\'ah Sera. +2',
        Feet = 'Hermes\' Sandals',
    },
	
	Dt = {
        Head = 'Nyame Helm',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Visucius\'s Mantle',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
    Pet_Dt = {
        Head = 'Anwig Salade',
        Neck = 'Empath Necklace',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Taeon Tabard',
        Hands = 'Taeon Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Visucius\'s Mantle',
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
	},
	
    Pet_Only_Tp_Default = {
        Neck = 'Shulmanu Collar',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Domes. Earring',
        Back = 'Visucius\'s Mantle',
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
    },
    Pet_Only_Tp_Hybrid = {
    },
    Pet_Only_Tp_Acc = {
    },
    -- These sets will be for when both you and your pet are engaged
	Tp_Default = {
        Head = 'Mpaca\'s Cap',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Mache Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Visucius\'s Mantle',
        Waist = 'Moonbow Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
	Tp_Hybrid = {
        Neck = 'Empath Necklace',
        Ear1 = 'Mache Earring',
        Hands = 'Malignance Gloves',
        Ring1 = 'Cacoethic Ring',
    },
	Tp_Acc = {},
    -- These following sets are intended for one off items to equip while the pet is engaged (or both of you) based on the PupMode. An example would be Pet HP+ pieces for Tank mode. Can be empty but do not delete.
    Tank = {
        Range = 'Animator P +1',
    },
    Melee = {
        Range = 'Neo Animator',
    },
    Ranger = {
        Range = 'Animator P +1',
    },
    Mage = {
        Range = 'Neo Animator',
    },

    Precast = {
        Head = 'Haruspex Hat',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Ring2 = 'Prolix Ring',
    },

	Ws_Default = {
        Ammo = 'Coiste Bodhar',
        Head = 'Valorous Mask',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Karieyh Ring',
        Ring2 = 'Rufescent Ring',
        Back = '',
        Waist = 'Fotia Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Ws_Hybrid = {
        Ammo = 'Voluspa Tathlum',
    },
    Ws_Acc = {
        Ammo = 'Voluspa Tathlum',
    },
    Pet_WS = {
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear2 = 'Domes. Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Waist = 'Incarnation Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
	},
    Pet_RNGWS = {
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear2 = 'Domes. Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Waist = 'Incarnation Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
	},
	
	Repair = {
		Ammo = 'Automat. Oil +3',
	},
    Maneuver = {
	},
	
	
	Movement = {
        Feet = 'Hermes\' Sandals',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
	gcinclude.Initialize:once(3);

    --[[ Set you job macro defaults here]]
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
	gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local pet = gData.GetPet();
	
    gFunc.EquipSet(sets.Idle);
    if (pet ~= nil) then
        gFunc.EquipSet(sets.Idle_Pet);
    end
	
    if (pet ~= nil and pet.Status == 'Engaged') then
        gFunc.EquipSet('Pet_Only_Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        if (player.Status == 'Engaged') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        end
            
        gFunc.EquipSet(gcdisplay.GetCycle('PupMode'));
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end

	if (gcdisplay.GetToggle('DTset') == true) then
        if (pet ~= nil) then
            gFunc.EquipSet(sets.Pet_Dt);
		end
        gFunc.EquipSet(gcinclude.sets.Dt);
        gFunc.EquipSet(sets.Dt);
	end
	if (gcdisplay.GetToggle('Kite') == true) then
		gFunc.EquipSet(sets.Movement);
	end
	
    gcinclude.CheckDefault ();
    if (pet ~= nil) and (pet.TP > 950) then 
        if (gcdisplay.GetCycle('PupMode') == 'Ranger') then
            gFunc.EquipSet(sets.Pet_RNGWS);
        else
            gFunc.EquipSet(sets.Pet_WS);
        end
    end
    if (gcinclude.RRSET == true) then gFunc.EquipSet(gcinclude.sets.Reraise) end
end

profile.HandleAbility = function()
	local ability = gData.GetAction();
	if (string.match(ability.Name, 'Repair')) or (string.match(ability.Name, 'Maintenance')) then
		gFunc.EquipSet(sets.Repair);
    elseif (string.contains(ability.Name, 'Maneuver')) then
        gFunc.EquipSet(sets.Maneuver);
	end

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
	local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Precast);

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot);
end

profile.HandleWeaponskill = function()
	local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end
    end
end

return profile;