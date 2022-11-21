local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Ammo = 'Yamarang',
        Head = 'Mpaca\'s Cap',
        Neck = 'Warder\'s Charm +1',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Infused Earring',
        Body = 'Malignance Tabard',
        Hands = 'Macabre Gaunt. +1',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Carrier\'s Sash',
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
        Main = 'Kikoku',
        Sub = 'Tauret',
        Ammo = 'Yamarang',
        Head = 'Mochi. Hatsuburi +2',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Mpaca\'s Gloves',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Danzo Sune-Ate',
    },

    Dt = {
        Ammo = 'Yamarang',
        Head = 'Malignance Chapeau',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Date Shuriken',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +1', AugPath='A' },
        Ear1 = 'Eabani Earring',
        Ear2 = 'Telos Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Gere Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Mpaca\'s Cap',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Mpaca\'s Gloves',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Tp_Acc = {
        Head = 'Malignance Chapeau',
        Ear1 = 'Odr Earring',
        Ear2 = 'Telos Earring',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Malignance Gloves',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = 'Tatena. Sune. +1',
    },
    Tp_Proc = { -- a set to force low dmg for things like Abyssea
        Ammo = { Name = 'Coiste Bodhar', AugPath='A' },
        Head = 'Rawhide Mask',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Emet Harness +1',
        Hands = 'Tatena. Gote +1',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Tatena. Haidate +1', AugPath='A' },
        Feet = 'Tatena. Sune. +1',
    },


    Precast = {
        Ammo = 'Sapience Orb',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Hands = 'Leyline Gloves',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Magic Damage +20', [2] = 'Mag. Acc+20', [3] = '"Fast Cast"+10', [4] = 'INT+20' } },
        Waist = 'Audumbla Sash',
        Feet = 'Taeon Boots',
    },


    Utsu = {
        Ammo = 'Staunch Tathlum',--sir10
        Head = 'Malignance Chapeau',
        Neck = 'Moonlight Necklace',--sir15
        Body = 'Malignance Tabard',
        Hands = 'Rawhide Gloves',--sir15
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Audumbla Sash',--sir10
        Legs = 'Nyame Flanchard',
        Feet = 'Hattori Kyahan +1',
    },
    Nuke = {
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Mochi. Hatsuburi +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Hattori Tekko +1',
        Ring1 = 'Dingir Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Magic Damage +20', [2] = 'Mag. Acc+20', [3] = '"Fast Cast"+10', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Hachi. Kyahan +1',
    },
    Macc = {
        Ammo = 'Staunch Tathlum',
        Head = 'Mochi. Hatsuburi +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Magic Damage +20', [2] = 'Mag. Acc+20', [3] = '"Fast Cast"+10', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {
    },
    Midshot = {
        Neck = 'Iskur Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Date Shuriken',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +1', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+20', [4] = 'Attack+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Ws_Proc = { -- a set to force low dmg for things like Abyssea
    },

    Hi_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = 'Adhemar Bonnet +1',
        Neck = { Name = 'Ninja Nodowa +1', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Odr Earring',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Ryuo Tekko',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+20', [4] = 'Attack+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Hi_Hybrid = {},
    Hi_Acc = {},

    Metsu_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = { Name = 'Ninja Nodowa +1', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Odr Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+20', [4] = 'Attack+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Metsu_Hybrid = {},
    Metsu_Acc = {},

    Shun_Default = {
        Ammo = 'Date Shuriken',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Fotia Gorget',
        Ear1 = 'Odr Earring',
        Ear2 = 'Lugra Earring +1',
        Body = 'Nyame Mail',
        Hands = { Name = 'Adhemar Wrist. +1', AugPath='B' },
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = 'Weapon skill damage +10%', [3] = 'AGI+20', [4] = 'Attack+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Hiza. Hizayoroi +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Shun_Hybrid = {},
    Shun_Acc = {},

    Enmity = {
        Ammo = 'Date Shuriken',
        Head = 'Mpaca\'s Cap',
        Neck = 'Moonlight Necklace',
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Hiza. Haramaki +2',
        Hands = 'Macabre Gaunt. +1',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Supershear Ring',
        Back = { Name = 'Andartia\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Flume Belt +1',
        Feet = 'Danzo Sune-Ate',
    },

    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Potency of "Cure" effect received+5%', [2] = 'Mag. Acc.+19', [3] = 'Accuracy+21', [4] = '"Mag. Atk. Bns."+19', [5] = '"Treasure Hunter"+2' } },
	},
    Movement = {
        Feet = 'Danzo Sune-Ate',
	},
    Movement_Night = {
        Feet = 'Hachi. Kyahan +1',
	},
    Extra = {--weapons that are for procing that are in storage slips
        Main = 'Levin',
        Main = 'Burrower\'s Wand',
        Main = 'Qutrub Knife',
        Main = 'Twinned Blade',
        Main = 'Iapetus',
    },
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Toolbag (Ino)', Quantity = 'all'},
    {Name = 'Toolbag (Shika)', Quantity = 'all'},
    {Name = 'Toolbag (Cho)', Quantity = 'all'},
    {Name = 'Toolbag (Shihe)', Quantity = 'all'},
    {Name = 'Shihei', Quantity = 'all'},
    {Name = 'Inoshishinofuda', Quantity = 'all'},
    {Name = 'Chonofuda', Quantity = 'all'},
    {Name = 'Shikanofuda', Quantity = 'all'},
    {Name = 'Forbidden Key', Quantity = 'all'},
    {Name = 'Date Shuriken', Quantity = 'all'}
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
    local game = gData.GetEnvironment();
	
	local player = gData.GetPlayer();
    
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default);
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then 
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
        if (gcdisplay.GetToggle('PROC') == true) then gFunc.EquipSet(sets.Tp_Proc) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		if (game.Time < 6.00) or (game.Time > 18.00) then
		    gFunc.EquipSet(sets.Movement_Night);
        else
            gFunc.EquipSet(sets.Movement);
        end
    end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then
        if (game.Time < 6.00) or (game.Time > 18.00) then
		    gFunc.EquipSet(sets.Movement_Night);
        else
            gFunc.EquipSet(sets.Movement);
        end
	end
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
    gFunc.EquipSet(sets.Precast);

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    if (spell.Skill == 'Ninjutsu') then
        if string.contains(spell.Name, 'Utsusemi') then
            gFunc.EquipSet(sets.Utsu);
        elseif (gcinclude.NinNukes:contains(spell.Name)) then
            gFunc.EquipSet(sets.Nuke);
        else
            gFunc.EquipSet(sets.Macc);
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
    elseif (gcdisplay.GetToggle('PROC') == true) then
        gFunc.EquipSet(sets.Ws_Proc);
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end

	    if string.match(ws.Name, 'Blade: Hi') then
            gFunc.EquipSet(sets.Hi_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Hi_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Blade: Metsu') then
            gFunc.EquipSet(sets.Metsu_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Metsu_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Blade: Shun') then
            gFunc.EquipSet(sets.Shun_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Shun_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
