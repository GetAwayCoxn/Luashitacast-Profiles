local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = T{
    Idle = {
        Main = 'Bolelabunga',
        Sub = 'Genmei Shield',
        Ammo = 'Staunch Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Lugh\'s Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Agwu\'s Slops',
        Feet = 'Volte Gaiters',
    },
    Idle_Staff = {
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Head = 'Befouled Crown',
        Ring1 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
    },
    Town = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Culminus',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Acad. Mortar. +2',
        Neck = 'Bathy Choker +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Acad. Bracers +2',
        Back = 'Lugh\'s Cape',
        Legs = 'Agwu\'s Slops',
        Feet = 'Volte Gaiters',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
    },


    Precast = {
        Ammo = 'Staunch Tathlum',
        Head = 'Peda. M.Board +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Etiolation Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Acad. Bracers +2',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Agwu\'s Slops',
        Feet = 'Acad. Loafers +2',
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Feet = 'Vanya Clogs',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    Stoneskin_Precast = {
        Head = 'Umuthi Hat',
        Hands = 'Carapacho Cuffs',
        Waist = 'Siegel Sash',
    },


    Cure = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = { Name = 'Vanya Hood', AugPath='C' },
        Neck = 'Nodens Gorget',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Regal Earring',
        Body = 'Gende. Bliaut +1',
        Hands = 'Weath. Cuffs +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Rumination Sash',
        Legs = 'Vanya Slops',
        Feet = 'Vanya Clogs',
    },
    Self_Cure = {
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
        Head = 'Arbatel Bonnet +1',
        Body = 'Telchine Chas.',
        Hands = 'Arbatel Bracers +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },

    Enhancing = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Peda. Gown +3',
        Hands = 'Arbatel Bracers +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = { [1] = 'Enh. Mag. eff. dur. +8', [2] = '"Conserve MP"+4' } },
        Feet = 'Telchine Pigaches',
    },
    Self_Enhancing = {},
    Skill_Enhancing = {},
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Phalanx = {},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },
    Self_Refresh = {},

    Enfeebling = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Acad. Gown +2',
        Hands = 'Peda. Bracers +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Acad. Pants +2',
        Feet = 'Acad. Loafers +2',
    },

    Drain = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Acad. Mortar. +2',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Acad. Gown +2',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Acad. Pants +2',
        Feet = 'Agwu\'s Pigaches',
    },

    Nuke = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Jhakri Coronal +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Lugh\'s Cape',
        Waist = 'Sacro Cord',
        Legs = 'Jhakri Slops +2',
        Feet = 'Amalric Nails +1',
    },
    NukeACC = {
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
    },
    Burst = {
        Main = 'Bunzi\'s Rod', -- 10 and 0
        Sub = 'Ammurapi Shield',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Peda. M.Board +2', -- 0 and 2
        Neck = 'Argute Stole +1', -- 7 and 0
        Body = 'Agwu\'s Robe', -- 10 and 0
        Hands = 'Amalric Gages +1', -- 0 and 6
        Ring1 = 'Mujin Band', -- 0 and 5
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops', -- 9 and 0
        Feet = 'Agwu\'s Pigaches', -- 6 and 0
    },
    Helix = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Mall. Chapeau +2',
        Neck = 'Argute Stole +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Amalric Gages +1',
        Neck = 'Argute Stole +1',
        Ring1 = 'Stikini Ring +1',
        Back = 'Lugh\'s Cape',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops',
        Feet = 'Amalric Nails +1',
    },
    HelixBurst = {
        Ear1 = 'Crematio Earring',
        Feet = 'Amalric Nails +1',
    },
    Kaustra = {--need to refine this set
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Pixie Hairpin +1',--need this
        Neck = 'Argute Stole +1',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',--seidr cotehardie
        Hands = 'Amalric Gages +1',
        Neck = 'Argute Stole +1',
        Ring1 = 'Stikini Ring +1',--freke ring
        Ring2 = 'Archon Ring',
        Back = 'Lugh\'s Cape',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops',
        Feet = 'Amalric Nails +1',
    },

    Preshot = {
    },
    Midshot = {
    },

    Ws_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = 'Jhakri Coronal +2',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Rufescent Ring',
        Ring2 = 'Karieyh Ring',
        Back = 'Solemnity Cape',
        Waist = 'Fotia Belt',
        Legs = 'Jhakri Slops +2',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();

    gFunc.EquipSet(sets.Idle);

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
	
	if (gcdisplay.GetToggle('DTset') == true) then
        gFunc.EquipSet(gcinclude.sets.Dt);
		gFunc.EquipSet(sets.Dt);
	end
	if (gcdisplay.GetToggle('Kite') == true) then
		gFunc.EquipSet(sets.Movement);
	end

    gcinclude.CheckDefault ();
    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.Precast);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
end

profile.HandleMidcast = function()
    local player = gData.GetPlayer();
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Enhancing);
        end

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Temper') then
            gFunc.EquipSet(sets.Skill_Enhancing);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
            if (target.Name == me) then
                gFunc.EquipSet(sets.Self_Refresh);
            end
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Cure);
        end
        if string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        end
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);

        if (gcdisplay.GetCycle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.NukeACC);
        end
        if (gcdisplay.GetToggle('Burst') == true) then
            gFunc.EquipSet(sets.Burst);
        end
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
        if string.match(spell.Name, 'helix') then
            gFunc.EquipSet(sets.Helix);
            if (gcdisplay.GetToggle('Burst') == true) then
                gFunc.EquipSet(sets.HelixBurst);
            end
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        elseif (string.match(spell.Name, 'Kaustra')) then
            gFunc.EquipSet(sets.Kaustra);
        end
    end

    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
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
