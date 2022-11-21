local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Range = 'Holliday',
        Ammo = 'Decimating Bullet',
        Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ear2 = 'Telos Earring',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Ikenga\'s Trousers',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Rawhide Mask',
        Ring1 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
    },
    Town = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Holliday',
        Ammo = 'Decimating Bullet',
        Head = 'Rawhide Mask',
        Neck = 'Iskur Gorget',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Telos Earring',
        Body = 'Herculean Vest',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Solemnity Cape',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },

    Dt = {
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Telos Earring',
        Body = 'Herculean Vest',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+9', [2] = '"Dbl.Atk."+2', [3] = '"Triple Atk."+2', [4] = 'DEX+8' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Malignance Chapeau',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
    },
    Tp_Acc = {
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Telos Earring',
        Hands = 'Tatena. Gote +1',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Legs = 'Tatena. Haidate +1',
        Feet = 'Tatena. Sune. +1',
    },


    Precast = {
        Neck = 'Baetyl Pendant',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Ring1 = 'Prolix Ring',
        Legs = 'Enif Cosciales',
    },


    Cure = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Legs = 'Carmine Cuisses +1',
    },

    Enhancing = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Enfeebling = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {},

    Drain = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {--base preshot, no flurry, 70cap, 10 from gifts
        Hands = 'Carmine Fin. Ga. +1',--8
        Ring1 = 'Crepuscular Ring',--3
        Waist = 'Impulse Belt',--3
        Legs = 'Ikenga\'s Trousers',--8
        Feet = 'Meg. Jam. +2',--10
    },
    Preshot_FlurryI = {--with flurry I on, gives 15, 10 from gifts
        Hands = 'Carmine Fin. Ga. +1',--8
        Ring1 = 'Crepuscular Ring',--3
        Waist = 'Impulse Belt',--3
        Legs = 'Ikenga\'s Trousers',--8
        Feet = 'Meg. Jam. +2',--10
    },
    Preshot_FlurryII = {--with flurry II on, gives 30, 10 from gifts
        Hands = 'Carmine Fin. Ga. +1',--8
        Waist = 'Impulse Belt',--3
        Legs = 'Ikenga\'s Trousers',--8
        Feet = 'Meg. Jam. +2',--10
    },
    Midshot = {
        Head = 'Malignance Chapeau',
        Neck = 'Iskur Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Ilabrat Ring',
        Waist = 'Eschan Stone',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Nyame Sollerets',
    },
    Barrage = {
        Hands = 'Orion Bracers',
    },
    Midshot_Acc = {--will be over written by barrage set still 
        Head = 'Malignance Chapeau',
        Neck = 'Iskur Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Crepuscular Ring',
        Ring2 = 'Cacoethic Ring +1',
        Waist = 'Eschan Stone',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Nyame Sollerets',
    },
    DoubleShot = {
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = 'Belenus\'s Cape',
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    WsObi = {--puts elemental obi on for trueflight/wildfire under light/fire situations
        Waist = 'Hachirin-no-Obi',
    },

    Savage_Default = {
        Head = 'Nyame Helm',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Legs = 'Nyame Flanchard',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Aedge_Default = {
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },
    TrueFlight_Default = {
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = 'Belenus\'s Cape',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',--relic+3
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    TrueFlight_Hybrid = {
    },
    TrueFlight_Acc = {
    },

    Scavenge = {
        Feet = 'Orion Socks',
    },
    Sharpshot = {
        Legs = 'Orion Braccae',
    },
    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Potency of "Cure" effect received+5%', [2] = 'Mag. Acc.+19', [3] = 'Accuracy+21', [4] = '"Mag. Atk. Bns."+19', [5] = '"Treasure Hunter"+2' } },
	},
    Movement = {
        Legs = 'Carmine Cuisses +1',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Decimating Bullet', Quantity = 'all'},
    {Name = 'Dec. Bul. Pouch', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 10');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');

    gcinclude.settings.RefreshGearMPP = 35;
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
	
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Scavenge') then gFunc.EquipSet(sets.Scavenge);
    elseif string.match(ability.Name, 'Sharpshot') then gFunc.EquipSet(sets.Sharpshot) end

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
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Macc);
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandlePreshot = function()
    local flurryI = gData.GetBuffCount(265);
    local flurryII = gData.GetBuffCount(581);

    gFunc.EquipSet(sets.Preshot);

    if flurryII > 0 then
        gFunc.EquipSet(sets.Preshot_FlurryII);
    elseif flurryI > 0 then
        gFunc.EquipSet(sets.Preshot_FlurryI);
    end
end

profile.HandleMidshot = function()
    local double = gData.GetBuffCount('Double Shot');
    local barrage = gData.GetBuffCount('Barrage');
    gFunc.EquipSet(sets.Midshot);

    if double > 0 then
        gFunc.EquipSet(sets.DoubleShot);
    end

    if (gcdisplay.GetCycle('MeleeSet') == 'Acc') then
        gFunc.EquipSet(sets.Midshot_Acc);
    end

    if barrage > 0 then--ensure acc as base if barrage up
        gFunc.EquipSet(sets.Midshot_Acc);
        gFunc.EquipSet(sets.Barrage);
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
        local weather = gData.GetEnvironment();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end
        
        if string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'True Flight') then
            gFunc.EquipSet(sets.TrueFlight_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('TrueFlight_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
            if (weather.DayElement == 'Light' or weather.RawWeatherElement == 'Light') then gFunc.EquipSet(sets.WsObi) end
        elseif string.match(ws.Name, 'Wildfire') then
            gFunc.EquipSet(sets.Wildfire_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Wildfire_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
            if (weather.DayElement == 'Fire' or weather.RawWeatherElement == 'Fire') then gFunc.EquipSet(sets.WsObi) end
        end
    end
end

return profile;
