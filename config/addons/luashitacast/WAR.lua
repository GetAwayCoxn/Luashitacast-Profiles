local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Ammo = { Name = 'Coiste Bodhar', AugPath='A' },
        Head = 'Valorous Mask',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Volte Moufles',
        Ring1 = 'Defending Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },
    Resting = {},
    Idle_Regen = {
        Head = 'Crepuscular Helm',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Hands = 'Volte Moufles',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Ring1 = 'Stikini Ring +1',
    },
    Town = {
        Main = 'Naegling',
        Sub = 'Blurred Shield +1',
        Ammo = { Name = 'Coiste Bodhar', AugPath='A' },
        Head = 'Hjarrandi Helm',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Volte Moufles',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Hermes\' Sandals',
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
        Neck = 'War. Beads +1',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Flamma Korazin +2',
        Hands = 'Sulev. Gauntlets +2',
        Ring1 = 'Niqmaddu Ring',
        Ring2 = 'Chirich Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Tatena. Sune. +1',
    },
    Tp_Hybrid = {
        Ammo = 'Staunch Tathlum',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
    },
    Tp_Acc = {
        Ammo = 'Seeth. Bomblet +1',
        Hands = 'Tatena. Gote +1',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
        Legs = 'Tatena. Haidate +1',
        Waist = 'Ioskeha Belt +1',
    },


    Precast = {
        Neck = 'Baetyl Pendant',
        Ear2 = 'Etiolation Earring',
        Ring1 = 'Prolix Ring',
        Feet = 'Odyssean Greaves',
    },


    Cure = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Feet = 'Odyssean Greaves',
    },

    Enhancing = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Enfeebling = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {},

    Drain = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Ammo = 'Pemphredo Tathlum',
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

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Schere Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Valorous Mitts',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Valorous Greaves',
    },
    Ws_Hybrid = {
        Body = 'Hjarrandi Breast.',
    },
    Ws_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        --Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },
    Savage_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'War. Beads +1',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Schere Earring',
        Body = 'Nyame Mail',--AF+3
        Hands = 'Valorous Mitts',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',--Valorous
        Feet = 'Sulev. Leggings +2',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Impulse_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Schere Earring',
        Body = 'Nyame Mail',--AF+3
        Hands = 'Valorous Mitts',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Cichol\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',--Valorous
        Feet = 'Sulev. Leggings +2',
    },
    Impulse_Hybrid = {
    },
    Impulse_Acc = {
    },

    Tomahawk = {
        Ammo = 'Thr. Tomahawk',
	},
    Warcry = {
        Head = 'Agoge Mask +1',
	},
    Aggressor = {
        Head = 'Pumm. Mask +1',
        Body = 'Agoge Lorica +1',
	},
    Defender = {
        Hands = 'Agoge Mufflers +1',
	},
    Berserk = {
        Body = 'Pumm. Lorica +1',
        Feet = 'Agoge Calligae +1',
	},
    BloodRage = {
        Body = 'Boii Lorica +1',
	},

    TH = {--/th will force this set to equip for 10 seconds
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    Movement = {
        Feet = 'Hermes\' Sandals',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Thr. Tomahawk', Quantity = 'all'},
    {Name = 'Red Curry Bun', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 3');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');

    gcinclude.settings.RegenGearHPP = 65;
    gcinclude.settings.RefreshGearMPP = 40;
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

    if ability.Name == 'Tomahawk' then gFunc.EquipSet(sets.Tomahawk);
    elseif ability.Name == 'Berserk' then gFunc.EquipSet(sets.Berserk);
    elseif ability.Name == 'Aggressor' then gFunc.EquipSet(sets.Aggressor);
    elseif ability.Name == 'Warcry' then gFunc.EquipSet(sets.Warcry);
    elseif ability.Name == 'Defender' then gFunc.EquipSet(sets.Defender);
    elseif ability.Name == 'Blood Rage' then gFunc.EquipSet(sets.BloodRage) end;

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
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'Impulse Drive') then
            gFunc.EquipSet(sets.Impulse_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Impulse_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        end
    end
end

return profile;
