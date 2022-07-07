local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


sets = T{
    Idle = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Epitaph',
        Head = 'Convoker\'s Horn',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Shomonjijoe +1',
        Hands = 'Asteria Mitts +1',
        Ring1 = 'Defending Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Assid. Pants +1',
        Feet = 'Volte Gaiters',
    },
    Pet_Idle = {--only need 14, rest 512|575|670 skill for favor then refresh
        Main = 'Gridarvor',--5
        Sub = 'Enki Strap',
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Caller\'s Pendant',--1,
        Ear1 = 'Evans Earring',--2
        Ear2 = 'Andoaa Earring',
        Body = 'Beck. Doublet +1',--6
        Hands = 'Asteria Mitts +1',
        Ring1 = 'Evoker\'s Ring',--1
        Ring2 = 'Stikini Ring +1',
        Back = 'Campestres\'s Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Assid. Pants +1',
        Feet = 'Volte Gaiters',
    },
	Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Convoker\'s Horn',
        Body = 'Shomonjijoe +1',
        Hands = 'Asteria Mitts +1',
        Ring2 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
        Feet = 'Volte Gaiters',
    },
	Town = {
        Main = 'Gridarvor',
        Sub = 'Khonsu',
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Body = 'Shomonjijoe +1',
        Hands = 'Asteria Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
        Feet = 'Herald\'s Gaiters',
    },
	
	Dt = {
        Head = 'Nyame Helm',
        Neck = 'Empath Necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
    Pet_Dt = {
        Neck = 'Empath Necklace',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Handler\'s Earring +1',
	},
	
	Tp_Default = {
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
        Head = 'Nyame Helm',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Telos Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Petrov Ring',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
	Tp_Hybrid = {
        Neck = 'Empath Necklace',
        Ear1 = 'Mache Earring +1',
        Ring1 = 'Cacoethic Ring +1',
    },
	Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },
    Pet_Only_Tp = {
        Main = 'Gridarvor',
        Sub = 'Enki Strap',
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Lugalbanda Earring',
        Hands = 'Asteria Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Varar Ring +1',
        Back = 'Campestres\'s Cape',
        Waist = 'Incarnation Sash',
        Legs = 'Taeon Tights',
        Feet = 'Gleti\'s Boots',
    },

    Precast = {
        Ammo = 'Sapience Orb',
        Head = 'Haruspex',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Inyanga Jubbah +2',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Waist = 'Embla Sash',
        Legs = 'Lengo Pants',
        Feet = 'Amalric Nails +1',
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Feet = 'Vanya Clogs',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    Stoneskin_Precast = {
        Head = 'Umuthi Hat',
        Waist = 'Siegel Sash',
    },

    Cure = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = { Name = 'Vanya Hood', AugPath='C' },
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Regal Earring',
        Body = { Name = 'Gende. Bliaut +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -3%', [3] = '"Cure" potency +5%' } },
        Hands = 'Weath. Cuffs +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Rumination Sash',
        Feet = { Name = 'Medium\'s Sabots', Augment = { [1] = 'MND+6', [2] = '"Conserve MP"+5', [3] = 'MP+40', [4] = '"Cure" potency +3%' } },
    },
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },

    Enhancing = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = { [1] = 'Enh. Mag. eff. dur. +8', [2] = '"Conserve MP"+4' } },
    },
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Refresh = {
		Waist = 'Gishdubar Sash',
    },

    SIR = {--77
        Ammo = 'Staunch Tathlum',--10
        Head = 'Vanya Hood',--15
        Neck = 'Loricate Torque +1',--5
        Hands = 'Amalric Gages +1',--11
        Waist = 'Rumination Sash',--10
        Legs ='Lengo Pants',--10
        Feet = 'Amalric Nails +1',--16
    },

    Drain = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Ring1 = 'Kishar Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = 'Fucho-no-Obi',
        Legs = 'Nyame Flanchard',
        Feet = 'Amalric Nails +1',
    },

	Ws_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Pixie Hairpin +1',
        Neck = 'Baetyl Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
	
    BP = {--I/II cap at 15, the rest need 680 skill total
        Ammo = 'Epitaph',--II 5
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Evans Earring',--I 2
        Ear2 = 'Andoaa Earring',
        Body = 'Shomonjijoe +1',--I 8
        Hands = 'Con. Bracers',--I 5
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
    },
    Siphon = {
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Andoaa Earring',
        Body = 'Beck. Doublet +1',
        Hands = 'Lamassu Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Campestres\'s Cape',
        Legs = 'Beck. Spats +1',
        Feet = 'Beck. Pigaches +1',
    },

	SmnPhysical = {
        Main = 'Gridarvor',
        Sub = 'Khonsu',
        Ammo = 'Epitaph',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Lugalbanda Earring',
        Body = 'Convo. Doublet',
        Ring2 = 'Varar Ring +1',
        Waist = 'Incarnation Sash',
        Legs = 'Enticer\'s Pants',
        Feet = 'Inyan. Crackows +2',
    },
	SmnMagical = {
        Main = 'Espiritus',
        Sub = 'Khonsu',
        Ammo = 'Epitaph',
        Head = 'Nyame Helm',
        Neck = 'Adad Amulet',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Lugalbanda Earring',
        Body = 'Convo. Doublet',
        Hands = 'Asteria Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Varar Ring +1',
        Back = 'Campestres\'s Cape',
        Legs = 'Enticer\'s Pants',
        Feet = 'Inyan. Crackows +2',
    },
	SmnSkill = {
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Andoaa Earring',
        Body = 'Beck. Doublet +1',
        Hands = 'Lamassu Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Campestres\'s Cape',
        Legs = 'Beck. Spats +1',
    },
    SmnAttributes = {--mostly for Wind's Blessing'
        Ammo = 'Epitaph',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Andoaa Earring',
        Body = 'Shomonjijoe +1',--need to Augment
        Hands = 'Lamassu Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Campestres\'s Cape',
        Legs = 'Assid. Pants +1',--need to Augment
    },
    SmnHealing = {--avatar HP+
        Ammo = 'Epitaph',
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Andoaa Earring',
        Body = 'Beck. Doublet +1',
        Hands = 'Lamassu Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Campestres\'s Cape',
        Legs = 'Beck. Spats +1',
    },
	SmnEnfeebling = {
        Main = 'Espiritus',
        Sub = 'Khonsu',
        Ammo = 'Epitaph',
        Neck = 'Adad Amulet',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Lugalbanda Earring',
        Body = 'Nyame Mail',
        --Body = 'Convo. Doublet',--after +2
        Hands = 'Lamassu Mitts +1',
        Ring1 = 'Evoker\'s Ring',
        Ring2 = 'Stikini Ring +1',--cait sith ring
        Back = 'Campestres\'s Cape',
        Waist = 'Incarnation Sash',--regal belt
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
        --Feet = 'Con. Pigaches',--after +2
    },
    SmnHybrid = {--special set for flamming crush and burning strike (for now)
        Main = 'Gridarvor',
        Sub = 'Khonsu',
        Ammo = 'Epitaph',
        Head = 'Nyame Helm',
        Neck = 'Adad Amulet',
        Ear1 = 'Enmerkar Earring',
        Ear2 = 'Lugalbanda Earring',
        Body = 'Nyame Mail',
        --Body = 'Convo. Doublet',-- after +2
        Hands = 'Nyame Gauntlets',
        Ring2 = 'Varar Ring +1',
        Back = 'Campestres\'s Cape',
        Waist = 'Incarnation Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Inyan. Crackows +2',
    },
	
    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
	},
	Movement = {
        Feet = 'Herald\'s Gaiters',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

local function HandlePetAction(PetAction)
	if (gcinclude.SmnSkill:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.SmnSkill);
        if PetAction.Name == 'Wind\'s Blessing' then
            gFunc.EquipSet(sets.SmnAttributes);
        end
	elseif (gcinclude.SmnMagical:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.SmnMagical);
    elseif (gcinclude.SmnHybrid:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.SmnHybrid);
	elseif (gcinclude.SmnHealing:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.SmnHealing);
    elseif (gcinclude.SmnEnfeebling:contains(PetAction.Name)) then
        gFunc.EquipSet(sets.SmnEnfeebling);
    else
        gFunc.EquipSet(sets.SmnPhysical);
    end
end

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
	gcinclude.Initialize:once(3);
    gcinclude.settings.RegenGearHPP = 50;
    gcinclude.settings.RefreshGearMPP = 60;
    gcinclude.settings.PetDTGearHPP = 30;
    --[[ Set you job macro defaults here]]
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
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
        gFunc.EquipSet(sets.Tp_Default);
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')); end
    elseif (pet ~= nil and pet.Status == 'Engaged') then
        gFunc.EquipSet(sets.Pet_Only_Tp);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
		gFunc.EquipSet(sets.Idle);
    end

    if (pet ~= nil) and (pet.Status == 'Idle') then
        gFunc.EquipSet(sets.Pet_Idle);
	end
	
	if (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	end
	
	gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then
		gFunc.EquipSet(sets.Dt);
        if (pet ~= nil) then
            gFunc.EquipSet(sets.Pet_Dt);
		end
	end
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
	local ability = gData.GetAction();
    local ac = gData.GetBuffCount('Astral Conduit');
    if ac > 0 then return end

    if (ability.Name == 'Release') or (ability.Name == 'Avatar\'s Favor') or (ability.Name == 'Assault') or (ability.Name == 'Retreat') or (ability.Name == 'Apogee') then return end

    gFunc.EquipSet(sets.BP);

    if (ability.Name == 'Elemental Siphon') then
        gFunc.EquipSet(sets.Siphon);
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

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.SIR);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Summoning Magic') then
        gFunc.EquipSet(sets.SIR);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Drain);
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
    end
end

return profile;