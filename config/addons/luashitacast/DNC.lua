local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = T{
    Idle = {
        Ammo = 'Yamarang',
        Head = 'Malignance Chapeau',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Karieyh Ring',
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
    },
    Idle_Refresh = {},
    Town = {
        Main = 'Acrontica',
        Sub = 'Tauret',
        Ammo = 'Yamarang',
        Head = 'Cumulus Masque',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },

    Dt = {
        Ammo = 'Crepuscular Pebble',
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
        Ammo = { Name = 'Coiste Bodhar', AugPath='A' },
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Mecisto. Mantle', Augment = { [1] = 'DEF+3', [2] = 'Cap. Point+32%', [3] = 'MP+20', [4] = '"Mag. Atk. Bns."+4' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Gleti\'s Breeches',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Malignance Chapeau',
        Neck = 'Sanctity Necklace',
    },
    Tp_Acc = {
        Ammo = 'Yamarang',
        Ear1 = 'Mache Earring',
        Ring2 = 'Cacoethic Ring',
    },


    Precast = {
        Ammo = 'Staunch Tathlum',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',
        Ring2 = 'Prolix Ring',
    },

    Preshot = {
    },
    Midshot = {
    },

    Ws_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'Accuracy+4', [2] = 'TP Bonus +250' } },
        Ear2 = 'Odr Earring',
        Body = 'Nyame Mail',
        Hands = 'Malignance Gloves',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Karieyh Ring',
        Waist = 'Moonbow Belt',
        Legs = 'Nyame Flanchard',
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

    Waltz = {
        Ammo = 'Yamarang',
    },

    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 7');
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
    if (gcinclude.RRSET == true) then gFunc.EquipSet(gcinclude.sets.Reraise) end
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Provoke') then gFunc.EquipSet(sets.Enmity);
    elseif string.contains(ability.Name, 'Waltz') then gFunc.EquipSet(sets.Waltz) end

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
