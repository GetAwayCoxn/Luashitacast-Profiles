local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


sets = T{
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck ='Unmoving Collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Hands = 'Turms Mittens',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Head = 'Rawhide Mask',
        Body = 'Agwu\'s Robe',
        Waist = 'Fucho-no-Obi',
    },
    Town = {
        Main = 'Aettir',
        Sub = 'Refined Grip +1',
        Ammo = 'Staunch Tathlum',
        Head = 'Cumulus Masque',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Legs = 'Carmine Cuisses +1',
        Feet = 'Nyame Sollerets',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck ='Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Staunch Tathlum',
        Head ='Nyame Helm',
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Turms Mittens',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = '"Dbl.Atk."+10', [2] = 'Phys. dmg. taken -10%', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Tp_Hybrid = {
        Ammo = 'Coiste Bodhar',
        Head = 'Adhemar Bonnet +1',
        Neck ='Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Herculean Vest',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Niqmaddu Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = '"Dbl.Atk."+10', [2] = 'Phys. dmg. taken -10%', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Acc = {
    },


    Precast = {
        Ammo = 'Staunch Tathlum',
        Head = 'Haruspex Hat', -- 8
        Neck = 'Baetyl Pendant', -- 4
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring', -- 1
        Body = 'Agwu\'s Robe', -- 8
        Ring1 = 'Prolix Ring', -- 2
        Ring2 = 'Kishar Ring', -- 4
        Legs = 'Agwu\'s Slops', -- 7
        Feet = 'Agwu\'s Pigaches', -- 4
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring', -- 5
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
        Legs = 'Futhark Trousers +1', -- 13
    },
    SIR = {
        Ammo = 'Staunch Tathlum', -- 10
        Neck = 'Loricate Torque +1', -- 5
        Ear1 = 'Crep. Earring',
        Back = 'Solemnity Cape',
        Waist = 'Rumination Sash', -- 10
        Legs = 'Carmine Cuisses +1', -- 20
    },
    Enmity = {
        Neck = 'Unmoving Collar +1',
        Ring1 = 'Cacoethic Ring',
        Ring2 = 'Vengeful Ring',
        Ear2 = 'Cryptic Earring',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Legs = 'Eri. Leg Guards +1',
        Feet = 'Erilaz Greaves +1',
    },

    Cure = {
        Neck = 'Sacro Gorget', -- 10
        Ear1 = 'Mendi. Earring', -- 5
        Hands = 'Macabre Gaunt. +1', -- 11
        Ring1 = 'Stikini Ring +1',
        Back = 'Solemnity Cape', -- 7
        Legs = 'Futhark Trousers +1', -- this set used for regen too
        Feet = 'Odyssean Greaves', -- 7
    },
    Phalanx = {
        Head = 'Fu. Bandeau +1', -- 5
        Legs = 'Nyame Flanchard', -- 5
    },
    Stoneskin = {
        Waist = 'Siegel Sash',
    },

    Preshot = {},
    Midshot = {},

    Ws_Default = {
        Ammo = 'Knobkierrie',
        Neck = 'Fotia Gorget',
        Back = { Name = 'Ogma\'s Cape', Augment = { [1] = '"Dbl.Atk."+10', [2] = 'Phys. dmg. taken -10%', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Fotia Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Dimi_Default = {
    },
    Dimi_Hybrid = {
    },
    Dimi_Acc = {
    },
    Reso_Default = {
    },
    Reso_Hybrid = {
    },
    Reso_Acc = {
    },

    Movement = {
        Legs = 'Carmine Cuisses +1',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
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
        gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')); end
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
     
end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    gFunc.EquipSet(sets.Enmity)

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
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.SIR)

    if string.contains(spell.Name, 'Cur') or string.contains(spell.Name, 'Regen') then
        gFunc.EquipSet(sets.Cure);
    elseif string.match(spell.Name, 'Phalanx') then
        gFunc.EquipSet(sets.Phalanx);
    elseif string.match(spell.Name, 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
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
   
        if string.match(ws.Name, 'Dimidiation') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Dimi_' .. gcdisplay.GetCycle('MeleeSet')); end
	    elseif string.match(ws.Name, 'Resolution') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Reso_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
