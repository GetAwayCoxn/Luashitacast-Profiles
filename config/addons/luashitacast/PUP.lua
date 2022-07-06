local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


sets = T{
    Idle = {
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
        Head = 'Taeon Chapeau',
        Neck = 'Empath Necklace',
        Ear1 = 'Burana Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Taeon Tabard',
        Hands = 'Taeon Gloves',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Ukko Sash',
        Legs = 'Taeon Tights',
    },
	Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {},
	Town = {
        Main = 'Sakpata\'s Fists',
        Range = 'Neo Animator',
        Ammo = 'Automat. Oil +3',
        Head = 'Karagoz Capello +1',
        Body = 'Pitre Tobe +3',
        Hands = 'Malignance Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Niqmaddu Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Moonbow Belt',
        Legs = 'Tali\'ah Sera. +2',
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
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
    Pet_Dt = {
        Head = 'Anwig Salade',
        Neck = 'Empath Necklace',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Taeon Tabard',
        Hands = 'Taeon Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
	},
	
    Pet_Only_Tp_Default = {
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Domes. Earring',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Mpaca\'s Boots',
    },
    Pet_Only_Tp_Hybrid = {
    },
    Pet_Only_Tp_Acc = {
    },
    -- These sets will be for when both you and your pet are engaged
	Tp_Default = {
        Main = 'Sakpata\'s Fists',
        Head = 'Malignance Chapeau',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
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
        Ring2 = 'Varar Ring +1',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
    },
	Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },
    -- These following sets are intended for one off items to equip while the pet is engaged (or both of you) based on the PupMode. An example would be Pet HP+ pieces for Tank mode. Can be empty but do not delete.
    Tank = {
        Range = 'Animator P +1',
        Ring2 = 'Varar Ring +1',
    },
    Melee = {
        Range = 'Neo Animator',
        Ring2 = 'Varar Ring +1',
    },
    Ranger = {
        Range = 'Animator P +1',
        Ring2 = 'Varar Ring +1',
    },
    Mage = {
        --Main = 'Denouements',
        Range = 'Neo Animator',
        Head = 'Naga Somen',
        Neck = 'Empath Necklace',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Burana Earring',
        Body = 'Naga Samue',
        Hands = 'Foire Dastanas +1',
        Ring1 = 'Defending Ring',
        Ring2 = 'Chirich Ring +1',
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

	Ws_Default = {
        Head = 'Blistering Sallet +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Schere Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Mpaca\'s Doublet',
        Body = 'Herculean Vest',
        Hands = 'Ryuo Tekko',
        Ring2 = 'Karieyh Ring +1',
        Ring1 = 'Petrov Ring',
        Back = '',
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
        Ring1 = 'Karieyh Ring +1',
        Ring2 = 'Niqmaddu Ring',
        Back = '',
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
        Ring1 = 'Overbearing Ring',--get second varar
        Ring2 = 'Varar Ring +1',
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
        Ring2 = 'Varar Ring +1',
        Waist = 'Incarnation Sash',
        Legs = 'Mpaca\'s Hose',
        Feet = 'Mpaca\'s Boots',
	},
	
	Repair = {
		Ammo = 'Automat. Oil +3',
        Body = 'Foire Tobe +2',
        Hands = 'Rao Kote',
        Ring1 = 'Overbearing Ring',
	},
    Maneuver = {
        Ear1 = 'Burana Earring',
        Hands = 'Foire Dastanas +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Accuracy+20', [5] = 'Attack+20', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
	},
    Overdrive = {
        Body = 'Pitre Tobe +3',
    },
	
	TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
	},
	Movement = {
        Feet = 'Hermes\' Sandals',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
	gcinclude.Initialize:once(3);

    --[[ Set you job macro defaults here]]
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
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
    if (pet ~= nil) then
        gFunc.EquipSet(sets.Idle_Pet);
    end
	
    if (pet ~= nil and pet.Status == 'Engaged') then
        gFunc.EquipSet('Pet_Only_Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        gFunc.EquipSet(gcdisplay.GetCycle('PupMode'));
        if (player.Status == 'Engaged') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet'));
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end

	if (gcdisplay.GetToggle('DTset') == true) then
        if (pet ~= nil) then
            gFunc.EquipSet(sets.Pet_Dt);
		end
         
        gFunc.EquipSet(sets.Dt);
	end
	if (gcdisplay.GetToggle('Kite') == true) then
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

        if string.match(ws.Name, 'Shijin Spiral') then
            gFunc.EquipSet(sets.Shijin_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Shijin_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;