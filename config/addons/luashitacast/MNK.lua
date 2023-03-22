local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Eabani Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Malignance Gloves',
        Ring1 = 'Karieyh Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Moonbow Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Rao Kote',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {},
    Town = {
        Main = 'Sakpata\'s Fists',
        Ammo = 'Staunch Tathlum',
        Head = 'Anchorite\'s Crown',
        Body = 'Bhikku Cyclas +2',
        Legs = 'Mpaca\'s Hose',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Malignance Tabard',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Coiste Bodhar',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Telos Earring',
        Body = 'Malignance Tabard',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Niqmaddu Ring',
        Ring2 = 'Gere Ring',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Moonbow Belt',
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Mpaca\'s Cap',
        Neck = 'Sanctity Necklace',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Mpaca\'s Gloves',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Tp_Acc = {
        Ear1 = 'Mache Earring +1',
        Hands = 'Tatena. Gote +1',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Feet = 'Tatena. Sune. +1',
    },


    Precast = {
        Ammo = 'Staunch Tathlum',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Etiolation Earring',
        Ring2 = 'Prolix Ring',
    },

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Knobkierrie',
        Head = 'Mpaca\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Odr Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Malignance Gloves',
        Ring1 = 'Gere Ring',
        Ring2 = 'Niqmaddu Ring',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Crit.hit rate+10', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Victory_Default = {
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Ear1 = 'Sherida Earring',
        Hands = 'Ryuo Tekko',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Crit.hit rate+10', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Legs = 'Mpaca\'s Hose',
    },
    Victory_Imp = {
        Ammo = 'Coiste Bodhar',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Schere Earring',
        Body = 'Bhikku Cyclas +2',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
    },
    Victory_Hybrid = {},
    Victory_Acc = {},

    Shijin_Default = {
    },
    Shijin_Hybrid = {},
    Shijin_Acc = {},

    Impetus = {--over rides your TP set if impetus is up
        Body = 'Bhikku Cyclas +2',
    },
    Focus = {
        Head = 'Anchor. Crown +1',
    },
    Dodge = {
        Feet = 'Anch. Gaiters',
    },
    Chakra = {
        Body = 'Anch. Cyclas +1',
        Hands = 'Hes. Gloves',
    },
    FootworkJA = {--this is used on JA activation
        Feet = 'Bhikku Gaiters +1',
    },
    Footwork = {--this will override your TP while footwork is active
        Feet = 'Bhikku Gaiters +1',
    },
    HundredFists = {
        Legs = 'Hes. Hose +3',
    },
    FormlessStrikes = {
        Body = 'Hes. Cyclas',
    },
    Counterstance = {--these feet are also for Mantra
        Feet = 'Hes. Gaiters',
    },

    TH = {
		Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Potency of "Cure" effect received+5%', [2] = 'Mag. Acc.+19', [3] = 'Accuracy+21', [4] = '"Mag. Atk. Bns."+19', [5] = '"Treasure Hunter"+2' } },
	},
    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Red Curry Bun', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
    local impetus = gData.GetBuffCount('Impetus');
    local footwork = gData.GetBuffCount('Footwork');
	
	local player = gData.GetPlayer();
    
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default);
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
        if (impetus >= 1) then gFunc.EquipSet(sets.Impetus) end
        if (footwork >= 1) then gFunc.EquipSet(sets.Footwork) end
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

    if string.match(ability.Name, 'Focus') then gFunc.EquipSet(sets.Focus);
    elseif string.match(ability.Name, 'Dodge') then gFunc.EquipSet(sets.Dodge);
    elseif string.match(ability.Name, 'Hundred Fists') then gFunc.EquipSet(sets.HundredFists);
    elseif string.match(ability.Name, 'Chakra') then gFunc.EquipSet(sets.Chakra);
    elseif string.match(ability.Name, 'Footwork') then gFunc.EquipSet(sets.FootworkJA);
    elseif string.match(ability.Name, 'Counterstance') or string.match(ability.Name, 'Mantra') then gFunc.EquipSet(sets.Counterstance);
    elseif string.contains(ability.Name, 'Formless Strikes') then gFunc.EquipSet(sets.FormlessStrikes) end

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
    local spell = gData.GetAction();
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
        local impetus = gData.GetBuffCount('Impetus');

        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end

	    if string.match(ws.Name, 'Victory Smite') then
            gFunc.EquipSet(sets.Victory_Default)
            if impetus > 0 then gFunc.EquipSet('Victory_Imp'); end
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Victory_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Shijin Spiral') then
            gFunc.EquipSet(sets.Shijin_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Shijin_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
