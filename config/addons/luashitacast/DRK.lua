local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Jumalik Helm',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Volte Moufles',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Resting = {},
    Idle_Regen = {
        Head = 'Crepuscular Helm',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Jumalik Helm',
        Ring1 = 'Stikini Ring +1',
    },
    Town = {
        Main = 'Apocalypse',
        Sub = 'Utu Grip',
        Ammo = 'Staunch Tathlum',
        Head = 'Crepuscular Helm',
        Body = 'Fall. Cuirass +3',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Chirich Ring +1',
        Legs = { Name = 'Carmine Cuisses +1', AugPath='D' },
        Feet = 'Nyame Sollerets',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Volte Moufles',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = { Name = 'Coiste Bodhar', AugPath='A' },
        Head = 'Flam. Zucchetto +2',
        Neck = 'Sanctity Necklace',--jse neck
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Flamma Korazin +2',--Sakpata\ body
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Niqmaddu Ring',
        Back = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Sakpata\'s Cuisses',--af+3
        Feet = 'Flam. Gambieras +2',
    },
    Tp_Hybrid = {
        Body = 'Hjarrandi Breast.',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Sulevia\'s Ring',
        Waist = 'Ioskeha Belt +1',
        Legs = 'Sakpata\'s Cuisses',
    },
    Tp_Acc = {
        Ammo = 'Seeth. Bomblet +1',
        Head = 'Blistering Sallet +1',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Waist = 'Ioskeha Belt +1',
    },


    Precast = {
        Ammo = 'Sapience Orb',
        Head = 'Haruspex Hat',
        Neck = 'Baetyl Pendant',
        Body = 'Fall. Cuirass +3',
        Hands = 'Leyline Gloves',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Etiolation Earring',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Legs = 'Enif Cosciales',
        Feet = 'Carmine Greaves +1',--7
    },


    Cure = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Legs = 'Carmine Cuisses +1',
        Feet = { Name = 'Odyssean Greaves', Augment = { [1] = 'Damage taken-4%', [2] = 'Attack+8', [3] = 'Accuracy+2' } },
    },

    Enhancing = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Body = 'Shab. Cuirass +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Dread_Spikes = { -- HP+++++ at cast for max potency
        Head = 'Hjarrandi Helm',
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Eihwaz Ring',
        Waist = 'Asklepian Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Carmine Greaves +1',
    },

    Enfeebling = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Erra Pendant',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Malignance Earring',
        Ring1 = 'Kishar Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {
        Neck = 'Erra Pendant',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Malignance Earring',
        Ring1 = 'Kishar Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Drain = {
        Neck = 'Erra Pendant',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Malignance Earring',
        Ring1 = 'Kishar Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Crematio Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Fall. Cuirass +3',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = { -- WSD for all scythe basically
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Thrud Earring',
        Body = 'Hjarrandi Breast.', -- af+3
        Hands = 'Valorous Mitts',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses', -- relic +3
        Feet = 'Sulev. Leggings +2',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Aedge_Default = {
        Ammo = 'Seeth. Bomblet +1',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Fall. Cuirass +3',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Spikes = { -- set to leave body on with dread spikes up, only body here!
        Body = 'Heath. Cuirass +1',
    },
    BloodWeapon = {
        Body = 'Fall. Cuirass +3',
    },
    TH = {--/th will force this set to equip for 10 seconds
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    Movement = {
        Legs = 'Carmine Cuisses +1',
	},
};
profile.Sets = sets;

profile.Packer = {
    --{Name = 'Chonofuda', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
    local spikes = gData.GetBuffCount('Dread Spikes');
	
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
	
    if spikes ~= 0 then gFunc.EquipSet(sets.Spikes) end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Blood Weapon') then
		gFunc.EquipSet(sets.BloodWeapon);
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
        elseif (string.match(spell.Name, 'Dread Spikes')) then
            gFunc.EquipSet(sets.Dread_Spikes);
        end
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot);
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
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
