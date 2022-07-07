local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


sets = T{
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Gishdubar Sash',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
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
        Main = 'Naegling',
        Sub = 'Adapa Shield',
        Ammo = 'Voluspa Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Empath Necklace',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Telos Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
	
	Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
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
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Gleti\'s Boots',
	},
	
	Tp_Default = {
        Ammo = 'Coiste Bodhar',
        Head = 'Malignance Chapeau',
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'Telos Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Gere Ring',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
	Tp_Hybrid = {
        Neck = 'Empath Necklace',
        Ear1 = 'Mache Earring +1',
        Hands = 'Malignance Gloves',
        Ring1 = 'Cacoethic Ring +1',
    },
	Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },
    Pet_Only_Tp = {
        Ammo = 'Voluspa Tathlum',
        Head = 'Taeon Chapeau',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Domes. Earring',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Gleti\'s Boots',
    },

    Precast = {
        Neck = 'Baetyl Pendant',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Hands = 'Leyline Gloves',
        Ring2 = 'Prolix Ring',
    },

	Ws_Default = {
        Ammo = 'Coiste Bodhar',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Meg. Gloves +2',
        Ring2 = 'Karieyh Ring +1',
        Ring1 = 'Petrov Ring',
        Back = '',
        Waist = 'Fotia Belt',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
    Ws_Hybrid = {
        Ammo = 'Voluspa Tathlum',
    },
    Ws_Acc = {
        Ammo = 'Voluspa Tathlum',
    },
    Aedge_Default = {
        Ammo = 'Knobkierrie',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Attack+16', [2] = 'Weapon skill damage +10%', [3] = 'Accuracy+16', [4] = 'Pet: Mag. Acc.+1', [5] = 'Pet: STR+4' } },
        --Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Ankou\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },
	
	Call = {
		Hands = 'Ankusa Gloves +1',
        Feet = 'Gleti\'s Boots',
	},
	Reward = {
		Ammo = 'Pet Food Theta',
	},
    Killer = {
		Body = 'Nukumi Gausape',
	},
    Spur = {
		Feet = 'Nukumi Ocreae',
	},
    Ready = {
		Legs = 'Gleti\'s Breeches',
	},
	PetReadyDefault = {
		Ammo = 'Voluspa Tathlum',
		Head = 'Nyame Helm',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Domes. Earring',
		Body = 'Gleti\'s Cuirass',
        Hands = 'Nukumi Manoplas +1',
		Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Gleti\'s Boots',
	},
	PetAttack = {},
	PetMagicAttack = {},
	PetMagicAccuracy = {},
	
    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
	},
	Movement = {
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

local function HandlePetAction(PetAction)
    gFunc.EquipSet(sets.PetReadyDefault);

	if (gcinclude.BstPetAttack:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.PetAttack);
	elseif (gcinclude.BstPetMagicAttack:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.PetMagicAttack);
	elseif (gcinclude.BstPetMagicAccuracy:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.PetMagicAccuracy);
    end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
	gcinclude.Initialize:once(3);

    --[[ Set you job macro defaults here]]
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
	gcinclude.SetCommands(args);
end

profile.HandleDefault = function()
    local pet = gData.GetPet();
	local petAction = gData.GetPetAction();
    if (petAction ~= nil) then
        HandlePetAction(petAction);
        return;
    end
	
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet'));
    elseif (pet ~= nil) and (player.Status == 'Engaged') and (pet.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Hybrid);
    elseif (pet ~= nil and pet.Status == 'Engaged') then
        gFunc.EquipSet(sets.Pet_Only_Tp);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
		gFunc.EquipSet(sets.Idle);
    end
	
	if (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end
	
	gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then
		gFunc.EquipSet(sets.Dt);
        if (pet ~= nil) and (pet.HPP < 60) then
            gFunc.EquipSet(sets.Pet_Dt);
		end
	end
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
    if (pet ~= nil) then 
        if (player.Status == 'Engaged') and (pet.Status ~= 'Engaged') then
            AshitaCore:GetChatManager():QueueCommand(1, '/ja "Fight" <t>');
        end
    end
end

profile.HandleAbility = function()
	local ability = gData.GetAction();
	if string.match(ability.Name, 'Call Beast') or string.match(ability.Name, 'Bestial Loyalty') then
		gFunc.EquipSet(sets.Call);
	elseif string.match(ability.Name, 'Reward') then
		gFunc.EquipSet(sets.Reward);
    elseif string.match(ability.Type, 'Killer Instinct') then
		gFunc.EquipSet(sets.Killer);
    elseif string.match(ability.Type, 'Spur') then
		gFunc.EquipSet(sets.Spur);
    elseif string.match(ability.Type, 'Ready') then
		gFunc.EquipSet(sets.Ready);
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

        if string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;