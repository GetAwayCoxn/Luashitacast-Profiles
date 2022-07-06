local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = T{
    Idle = {
        Main = 'Idris',
        Sub = 'Ammurapi Shield',
        Head = 'Nyame Helm',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Agwu\'s Slops',
        Feet = 'Volte Gaiters',
    },
    Idle_Pet = {
        Main = 'Idris',
        Sub = 'Genmei Shield',
        Range = 'Dunna',
        Head = 'Azimuth Hood +1',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Telchine Chas.',
        Hands = 'Geo. Mitaines +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Eva.+20', [2] = 'Pet: "Regen"+15', [3] = 'Mag. Eva.+20' } },
        Waist = 'Isa Belt',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Main = 'Bolelabunga',
        Head = 'Befouled Crown',
        Body = 'Jhakri Robe +2',
        Hands = 'Bagua Mitaines +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
        Feet = 'Volte Gaiters',
    },
    Town = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = 'Dunna',
        Head = 'Bagua Galero +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Geo. Mitaines +2',
        Legs = 'Agwu\'s Slops',
        Feet = 'Herald\'s Gaiters',
    },

    Dt = {
        Head = 'Nyame Helm',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Main = 'Idris',
        Sub = 'Ammurapi Shield',
        Range = 'Dunna',
        --Head = 'Jhakri Coronal +2',
        Head = 'Blistering Sallet +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = 'Jhakri Robe +2',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Chirich Ring +1',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Eva.+20', [2] = 'Pet: "Regen"+15', [3] = 'Mag. Eva.+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Jhakri Slops +2',
        Feet = 'Jhakri Pigaches +2',
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Head = 'Blistering Sallet +1',
        Ear1 = 'Mache Earring +1',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Aurist\'s Cape +1',
    },


    Precast = {
        Main = 'Solstice',
        Range = 'Dunna',
        Head = 'Haruspex Hat',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Etiolation Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Bagua Mitaines +1',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Mallquis Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Agwu\'s Slops',
        Feet = 'Volte Gaiters',
    },
    Cure_Precast = {
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
        Body = 'Telchine Chas.',
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
        Body = 'Telchine Chas.',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = { [1] = 'Enh. Mag. eff. dur. +8', [2] = '"Conserve MP"+4' } },
        Feet = 'Telchine Pigaches',
    },
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Phalanx = {},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },
    Geomancy = { --900 skill, then indi duration, then CMP
        Main = 'Idris',
        Range = 'Dunna',
        Head = 'Agwu\'s Cap',--sir
        Neck = 'Bagua Charm',
        Ear1 = 'Mendi. Earring',
        Body = 'Telchine Chas.',
        Hands = 'Geo. Mitaines +2',--15
        Ring1 = 'Stikini Ring +1',--8
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Waist = 'Hachirin-no-Obi',
        Legs = 'Vanya Slops',
        Feet = 'Medium\'s Sabots',--5
    },
    Indi = {
        Main = 'Solstice',
        Back = 'Nantosuelta\'s Cape',
        Legs = 'Bagua Pants +1',
        Feet = 'Azimuth Gaiters +1',
    },

    Enfeebling = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Erra Pendant',
        --Ear1 = 'Regal Earring',--use this when u upgrade the AF
        Ear1 = 'Digni. Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops',
        Feet = { Name = 'Medium\'s Sabots', Augment = { [1] = 'MND+6', [2] = '"Conserve MP"+5', [3] = 'MP+40', [4] = '"Cure" potency +3%' } },
    },
    Macc = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Erra Pendant',
        --Ear1 = 'Regal Earring',--use this when u upgrade the AF
        Ear1 = 'Digni. Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },

    Drain = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Bagua Galero +1',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },

    Nuke = {
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Jhakri Coronal +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Amalric Slops +1',
        Feet = 'Amalric Nails +1',
    },
    NukeACC = {
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
    },
    Burst = {
        Main = 'Bunzi\'s Rod', --10 and 0
        Sub = 'Ammurapi Shield',
        Head = 'Ea Hat', -- 6 and 6
        --Body = 'Agwu\'s Robe', -- 10 and 0
        Body = 'Ea Houppelande', -- 8 and 8
        Hands = 'Amalric Gages +1', -- 0 and 6
        Ring1 = 'Mujin Band', -- 0 and 5
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops', -- 9 and 0
        Feet = 'Ea Pigaches', -- 4 and 4
    },
    Mp_Body = {Body = 'Seidr Cotehardie',},

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
    },

    Ws_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Jhakri Coronal +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Bolster = {Body = 'Bagua Tunic +1'},
    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
	},
    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
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

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        end
        if (gcdisplay.GetToggle('Fight') == false) then
            AshitaCore:GetChatManager():QueueCommand(1, '/fight');
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
	
	if (gcdisplay.GetToggle('DTset') == true) then
		gFunc.EquipSet(sets.Dt);
	end
	if (gcdisplay.GetToggle('Kite') == true) then
		gFunc.EquipSet(sets.Movement);
	end

    gcinclude.CheckDefault ();
    if (pet ~= nil) and (player.Status ~= 'Engaged') then
        gFunc.EquipSet(sets.Idle_Pet);
    end
     
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Full Circle') then gFunc.EquipSet(sets.Geomancy) end --lazy way to ensure the empy head piece is in on use
    if string.match(ability.Name, 'Bolster') then gFunc.EquipSet(sets.Bolster) end

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.Precast)

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local player = gData.GetPlayer();
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Cure);
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
        if (player.MPP <= 40) then
            gFunc.EquipSet(sets.Mp_Body);
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
        if (gcdisplay.GetCycle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.Macc);
        end
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Macc);
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
    elseif (spell.Skill == 'Geomancy') then
        gFunc.EquipSet(sets.Geomancy);
        if (string.contains(spell.Name, 'Indi')) then
            gFunc.EquipSet(sets.Indi);
        end
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

        if string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
