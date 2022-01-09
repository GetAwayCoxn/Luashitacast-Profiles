local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Eabani Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Moonbow Belt',
        Legs = 'Mummu Kecks +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Rao Kote',
    },
    Idle_Refresh = {},
    Town = {
        Main = 'Sakpata\'s Fists',
        Ammo = 'Crepuscular Pebble',
        Head = 'Wakido Kabuto +2',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Flam. Manopolas +2',
        Back = { Name = 'Smertrios\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = 'Accuracy+30', [3] = 'Attack+20', [4] = '"Store TP"+10', [5] = 'DEX+20' } },
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },

    Dt = {
        Ammo = 'Crepuscular Pebble',
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
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
        Ear2 = 'Cessance Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Niqmaddu Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Moonbow Belt',
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Mpaca\'s Cap',
        Neck = 'Sanctity Necklace',
        Hands = 'Mpaca\'s Gloves',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Tp_Acc = {
        Ammo = 'Ginsen',
        Ear1 = 'Mache Earring',
        Hands = 'Tatena. Gote +1',
        Ring1 = 'Cacoethic Ring',
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
    },

    Ws_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'Accuracy+4', [2] = 'TP Bonus +250' } },
        Ear2 = 'Odr Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Malignance Gloves',
        Ring1 = 'Niqmaddu Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Segomo\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Victory_Default = {
    },
    Victory_Hybrid = {},
    Victory_Acc = {},

    Shijin_Default = {
    },
    Shijin_Hybrid = {},
    Shijin_Acc = {},

    Impetus = {
        Body = 'Bhikku Cyclas +1',
    },

    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};

profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
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
    local impetus = gData.GetBuffCount('Impetus');
	
	local player = gData.GetPlayer();
    
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default);
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')); end
        if (impetus >= 1) then gFunc.EquipSet(sets.Impetus) end
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
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Provoke') then gFunc.EquipSet(sets.Enmity) end

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Precast)

    if string.contains(spell.Name, 'Utsusemi') then
        gFunc.EquipSet(gcinclude.sets.Utsu_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot);
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    elseif (gcdisplay.GetToggle('PROC') == true) then
        gFunc.EquipSet(sets.Ws_Proc);
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end

	    if string.match(ws.Name, 'Victory Smite') then
            gFunc.EquipSet(sets.Victory_Default)
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
