local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


local sets = {
    Idle = {
        Main = 'Sakpata\'s Fists',
        Head = 'Mpaca\'s Cap',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Gishdubar Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Idle_Pet = {
        Main = 'Sakpata\'s Fists',
        Head = 'Rawhide Mask',
        Neck = 'Empath Necklace',
        Ear1 = 'Burana Earring',
        Ear2 = 'Kara. Earring +1',
        Body = 'Taeon Tabard',
        Hands = 'Taeon Gloves',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
    },
	Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Hands = 'Rao Kote',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Rawhide Mask',
        Ring2 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
    },
	Town = {
        Main = 'Sakpata\'s Fists',
        Range = 'Neo Animator',
        Ammo = 'Automat. Oil +3',
        Head = 'Karagoz Capello +1',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Burana Earring',
        Ear2 = 'Kara. Earring +1',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Hermes\' Sandals',
    },
	
	Dt = {
        Head = 'Malignance Chapeau',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'C. Palug Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
    Pet_Dt = {
        Head = 'Anwig Salade',--10pt
        Neck = 'Empath Necklace',
        Ear1 = 'Enmerkar Earring',--3dt
        Ear2 = 'Handler\'s Earring +1',--4pt
        --Ear2 = 'Kara. Earring +1',
        Body = 'Taeon Tabard',--4dt
        Hands = 'Taeon Gloves',--4dt
        Ring1 = 'Defending Ring',
        Ring2 = 'C. Palug Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',--3dt
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
	},
	
    Pet_Only_Tp_Default = {
        Ammo = 'Automat. Oil +3',
        Head = 'Taeon Chapeau',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Kara. Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
    },
    Pet_Only_Tp_Hybrid = {
    },
    Pet_Only_Tp_Acc = {
        Legs = 'Heyoka Subligar',
    },
    -- These profile.Sets will be for when both you and your pet are engaged
	Tp_Default = {
        Main = 'Sakpata\'s Fists',
        Head = 'Malignance Chapeau',
        Ammo = 'Automat. Oil +3',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Kara. Earring +1',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Gere Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
	Tp_Hybrid = {
        Neck = 'Empath Necklace',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Malignance Gloves',
        Ring2 = 'C. Palug Ring',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
	Tp_Acc = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },
    -- These following profile.Sets are intended for one off items to equip while the pet is engaged (or both of you) based on the PupMode. An example would be Pet HP+ pieces for Tank mode. Can be empty but do not delete.
    Tank = {
        Range = 'Animator P +1',
        Ear1 = 'Domes. Earring',
        Ring1 = 'Overbearing Ring',
        Ring2 = 'C. Palug Ring',
        Legs = 'Heyoka Subligar',
    },
    Melee = {
        Range = 'Neo Animator',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
    },
    Ranger = {
        Range = 'Animator P +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
        -- Waist = 'Klouskap Sash +1', -- do this after getting +1
    },
    Mage = {
        Range = 'Neo Animator',
        Head = 'Naga Somen',
        Neck = 'Empath Necklace',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Burana Earring',
        Body = 'Naga Samue',
        Hands = 'Foire Dastanas +1',
        Ring1 = 'Tali\'ah Ring',
        Ring2 = 'C. Palug Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Ukko Sash',
        Legs = 'Foire Churidars +2',
        Feet = 'Mpaca\'s Boots',
    },

    Precast = {
        Head = 'Haruspex Hat',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Ring2 = 'Prolix Ring',
    },

    Enhancing = {
    },
    Phalanx = {
    },
    Stoneskin = {
    },
    Refresh = {
    },

    Cure = {
    },

    Enfeebling = {
    },

	Ws_Default = {
        Head = 'Blistering Sallet +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Schere Earring',
        Ear2 = 'Telos Earring',
        Body = 'Mpaca\'s Doublet',
        Hands = 'Ryuo Tekko',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Fotia Belt',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Shijin_Default = {
        Head = 'Malignance Chapeau',
        Neck = 'Fotia Gorget',
        Ear1 = 'Schere Earring',
        Ear2 = 'Mache Earring +1',
        Body = 'Herculean Vest',
        Hands = 'Malignance Gloves',
        Ring2 = 'Karieyh Ring +1',
        Ring1 = 'Niqmaddu Ring',
        Waist = 'Moonbow Belt',
        Legs = 'Samnuha Tights',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Shijin_Hybrid = {
    },
    Shijin_Acc = {
    },

    Pet_WS = {
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Burana Earring',
        Ear2 = 'Domes. Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
        Waist = 'Incarnation Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
	},
    Pet_RNGWS = {
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Burana Earring',
        Ear2 = 'Crep. Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
        Waist = 'Klouskap Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
	},
	
	Repair = {
		Ammo = 'Automat. Oil +3',
        Body = 'Foire Tobe +2',
        Hands = 'Rao Kote',
        Ring1 = 'Overbearing Ring',
        Feet = 'Foire Babouches',
	},
    Maneuver = {
        Ear1 = 'Burana Earring',
        Body = 'Kara. Farsetto +1',
        Hands = 'Foire Dastanas +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
	},
    Overdrive = {-- this set will force on the ability AND stay on for the duration of OD, dont change the body out because of that
        Range = 'Animator P +1',
        Ammo = 'Automat. Oil +3',
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Domes. Earring',
        Body = 'Pitre Tobe +3',
        Hands = 'Mpaca\'s Gloves',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'C. Palug Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash',
        Legs = 'Heyoka Subligar',
        Feet = 'Mpaca\'s Boots',
    },

	TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Potency of "Cure" effect received+5%', [2] = 'Mag. Acc.+19', [3] = 'Accuracy+21', [4] = '"Mag. Atk. Bns."+19', [5] = '"Treasure Hunter"+2' } },
	},
	Movement = {
        Feet = 'Hermes\' Sandals',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Automat. Oil +3', Quantity = 'all'},
    {Name = 'Bean Daifuku', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    --[[ Set you job macro defaults here]]
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');

    gcinclude.settings.RefreshGearMPP = 30;
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
    local OD = gData.GetBuffCount('Overdrive');
	
    gFunc.EquipSet(sets.Idle);
    if (pet ~= nil) then
        gFunc.EquipSet(sets.Idle_Pet);
    end
	
    if (pet ~= nil and pet.Status == 'Engaged') then
        gFunc.EquipSet('Pet_Only_Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        gFunc.EquipSet(gcdisplay.GetCycle('PupMode'));
        if (player.Status == 'Engaged') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end

    gcinclude.CheckDefault ();
    if (pet ~= nil) and (pet.TP > 950) and (pet.Status == 'Engaged') then 
        if (gcdisplay.GetCycle('PupMode') == 'Ranger') then
            gFunc.EquipSet(sets.Pet_RNGWS);
        elseif (gcdisplay.GetCycle('PupMode') == 'Melee') then
            gFunc.EquipSet(sets.Pet_WS);
        end
    end
    if (gcdisplay.GetToggle('DTset') == true) then
        if (pet ~= nil) then
            gFunc.EquipSet(sets.Pet_Dt);
		end
        gFunc.EquipSet(sets.Dt);
	end
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;

    if OD > 0 then
        gFunc.EquipSet(sets.Overdrive);
    end
end

profile.HandleAbility = function()
	local ability = gData.GetAction();
	if (string.match(ability.Name, 'Repair')) or (string.match(ability.Name, 'Maintenance')) then
		gFunc.EquipSet(sets.Repair);
    elseif (string.contains(ability.Name, 'Maneuver')) then
        gFunc.EquipSet(sets.Maneuver);
    elseif (string.match(ability.Name, 'Overdrive')) then
        gFunc.EquipSet(sets.Overdrive);
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
    local player = gData.GetPlayer();
    local spell = gData.GetAction();

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
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

        if string.match(ws.Name, 'Shijin Spiral') then
            gFunc.EquipSet(sets.Shijin_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Shijin_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;