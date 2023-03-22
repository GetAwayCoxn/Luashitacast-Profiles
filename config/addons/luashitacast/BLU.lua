local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1';
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Chirich Ring +1',
		Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'AGI+20', [5] = 'Evasion+25' } },
        Waist = 'Flume Belt +1',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
	Resting = {
        Body = 'Hashishin Mintan +2',
        Waist = 'Fucho-no-Obi',
    },
    Idle_Regen = {
        Neck = 'Bathy Choker +1';
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Rawhide Mask',
        Body = 'Hashishin Mintan +2',
        Ring1 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
    },
	Town = {
        Main = 'Tizona',
        Sub ='Sakpata\'s Sword',
        Head = 'Hashishin Kavuk +2',
    },

    Evasion = {--this set will be my idle set when in /cj mode for evasion pulling
        Main = 'Shikargar',
        Sub = 'Shikargar',
        Ammo = 'Staunch Tathlum',
        --Ammo = 'Amar Cluster',--this is on wig atm
        Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1';
        Ear1 = 'Eabani Earring',
        Ear2 = 'Infused Earring',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Vengeful Ring',
        Ring2 = 'Ilabrat Ring',--revisit this
		Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'AGI+20', [5] = 'Evasion+25' } },
        Waist = 'Svelt. Gouriz +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
	
	Dt = {
		Ammo = 'Staunch Tathlum',
		Neck = 'Bathy Choker +1',
		Ear1 = 'Eabani Earring',
        Head = 'Nyame Helm',
		Body = 'Malignance Tabard',
		Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
		Waist = 'Flume Belt +1',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Nyame Sollerets',
	},
	
	Tp_Default = {
        Main = 'Tizona',
        Sub = 'Sakpata\'s Sword',
        Ammo = 'Coiste Bodhar',
        Head = 'Adhemar Bonnet +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Herculean Vest',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+30', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Samnuha Tights',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
	Tp_Hybrid = {
        Head = 'Malignance Chapeau',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots'
    },
	Tp_Acc = {
        Ammo = 'Jukukik Feather',
        Head = 'Blistering Sallet +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Mache Earring +1',
        Body = 'Malignance Tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },
	
	Precast = {--64
        Ammo = 'Sapience Orb',--2
        Head = 'Haruspex Hat',--8
        Neck = 'Baetyl Pendant',--4
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',--1
        Body = 'Pinga Tunic',--13
        Hands = 'Leyline Gloves',--6
        Ring1 = 'Prolix Ring',--2
        Ring2 = 'Kishar Ring',--4
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'AGI+20', [5] = 'Evasion+25' } },---10
        Waist = 'Rumination Sash',
        Legs = 'Pinga Pants',--11
        Feet = 'Carmine Greaves +1',--7
    },
    Blu_Precast = {
        Body = 'Hashishin Mintan +2',
    },
    Stoneskin_Precast = {
        Waist = 'Siegel Sash',
    },

    Cure = {--I cap is 50, II cap is 30
        Ammo = 'Staunch Tathlum',
        Head = 'Pinga Crown',--8
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',--5
        Ear2 = 'Etiolation Earring',
        Body = 'Pinga Tunic',--13
        Hands = 'Telchine Gloves',--16
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Solemnity Cape',--7
        Waist = 'Gishdubar Sash',
        Legs = 'Pinga Pants',--11
        Feet = 'Medium\'s Sabots',--10 atm
    },
    WhiteWind = {--HP+ go!
        Ammo = 'Staunch Tathlum',
        Head = 'Pinga Crown',--8
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Telchine Gloves',--16
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',--7
        Waist = 'Carrier\'s Sash',
        Legs = 'Pinga Pants',--11
        Feet = 'Carmine Greaves +1',
    },
    BluSkill = {
        Body = 'Assim. Jubbah +2',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc+20', [4] = 'INT+20', [5] = 'Magic Damage +20' } },
        Legs = 'Hashishin Tayt +1',
    },
    BluMagical = {
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Crematio Earring',
        Ear2 = 'Regal Earring',
        Body = 'Hashishin Mintan +2',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Shiva Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc+20', [4] = 'INT+20', [5] = 'Magic Damage +20' } },
        Waist = 'Eschan Stone',
        Legs = 'Amalric Slops +1',
        Feet = 'Amalric Nails +1',
    },
    BluDark = {
        Head = 'Pixie Hairpin +1',
        Ring2 = 'Archon Ring',
    },
    BluMagicAccuracy = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Hashishin Kavuk +2',--af +2/3
        Neck = 'Erra Pendant',--JSE neck +1/2
        Ear1 = 'Crep. Earring',
        --Ear2 = 'Regal Earring',--use this after getting AF legs +2/3
        Ear2 = 'Digni. Earring',
        Body = 'Nyame Mail',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Acuity Belt +1',
        Legs = 'Jhakri Slops +2',--AF+2/3
        Feet = 'Jhakri Pigaches +2',
    },
    CJmid = {--same as macc set but with weapons since in CJmode we idle in eva swords
        Main = 'Sakpata\'s Sword',
        Sub = 'Bunzi\'s Rod',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Hashishin Kavuk +2',--af +2/3
        Neck = 'Erra Pendant',--JSE neck +1/2
        Ear1 = 'Crep. Earring',
        --Ear2 = 'Regal Earring',--use this after getting AF legs +2/3
        Ear2 = 'Digni. Earring',
        Body = 'Nyame Mail',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Acuity Belt +1',
        Legs = 'Jhakri Slops +2',--AF+2/3
        Feet = 'Jhakri Pigaches +2',
    },
    BluStun = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Hashishin Mintan +2',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Crepuscular Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc+20', [4] = 'INT+20', [5] = 'Magic Damage +20' } },
        Waist = 'Acuity Belt +1',
        Legs = 'Jhakri Slops +2',
        Feet = 'Gleti\'s Boots',
    },
    BluPhysical = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Adhemar Bonnet +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Odr Earring',
        Body = 'Malignance Tabard',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc+20', [4] = 'INT+20', [5] = 'Magic Damage +20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Jhakri Slops +2',
        Feet = 'Gleti\'s Boots',
    },
    CMP = {
        Ammo = 'Pemphredo Tathlum',
        --Head = 'Ipoca Beret',--in storage probably
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Kishar Ring',
        Back = 'Solemnity Cape',
        Waist = 'Hachirin-no-Obi',
        Legs = 'Augury Cuisses +1',--in storage probably
        Feet = 'Amalric Nails +1',
    },

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Coiste Bodhar',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Assim. Jubbah +2',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+30', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Gleti\'s Breeches',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
        Head = 'Nyame Helm',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
    Ws_Acc = {
    },
    Chant_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Adhemar Bonnet +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Begrudging Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = 'Crit.hit rate+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Legs = 'Gleti\'s Breeches',
        Feet = 'Thereoid Greaves',
    },
    Chant_Hybrid = {
        Head = 'Malignance Chapeau',
        Hands = 'Malignance Gloves',
    },
    Chant_Acc = {
    },
    Savage_Default = {
        Head = 'Hashishin Kavuk +2',
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Assim. Jubbah +2',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+30', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Legs = 'Gleti\'s Breeches',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Savage_Hybrid = {
        Ammo = 'Staunch Tathlum',
    },
    Savage_Acc = {
    },
    Expiacion_Default = {
        Ammo = 'Ghastly Tathlum +1',--crep pebble
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',--jse neck
        Ear1 = 'Regal Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Assim. Jubbah +2',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Dbl.Atk."+10', [3] = 'Accuracy+30', [4] = 'Attack+20', [5] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Gleti\'s Breeches',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Expiacion_Hybrid = {
        Ammo = 'Staunch Tathlum',
    },
    Expiacion_Acc = {
    },
    Requiescat_Default = {
        Head = 'Hashishin Kavuk +2',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Hashishin Mintan +2',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Beithir Ring',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Fotia Belt',
        Legs = 'Jhakri Slops +2',
        Feet = 'Jhakri Pigaches +2',
    },
    Requiescat_Hybrid = {
    },
    Requiescat_Acc = {
    },
	
    Ca = {
        Head = 'Hashishin Kavuk +2',
        Feet = 'Assim. Charuqs +1',
    },
    Ba = {
        Feet = 'Hashi. Basmak +1',
    },
    Diffusion = {
        Feet = 'Luhlaza Charuqs +1',
    },
    Efflux = {
        Legs = 'Hashishin Tayt +1',
    },

    Enmity = {
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Cryptic Earring',
        Ring1 = 'Eihwaz Ring',
    },

    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Potency of "Cure" effect received+5%', [2] = 'Mag. Acc.+19', [3] = 'Accuracy+21', [4] = '"Mag. Atk. Bns."+19', [5] = '"Treasure Hunter"+2' } },
	},
    Salvage = {
		Main = 'Naegling',
        Sub = 'Bunzi\'s Rod',
	},
	Movement = {
		Legs = 'Carmine Cuisses +1',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Tropical Crepe', Quantity = 'all'},
    {Name = 'Rolan. Daifuku', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
	gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
	gFunc.EquipSet(sets.Idle);
	
    local zone = gData.GetEnvironment();
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (gcdisplay.GetToggle('CJmode') == true) then
		gFunc.EquipSet(sets.Evasion);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    if (gcdisplay.GetToggle('CJmode') ~= true) then
        gcinclude.CheckDefault ();
    end
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
    --lazy equip weapons for salvage runs
    if (zone.Area:contains('Remnants')) then
        gFunc.EquipSet(sets.Salvage);
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

    if string.contains(spell.Skill, 'Blue Magic') then
        gFunc.EquipSet(sets.Blu_Precast);
    elseif string.contains(spell.Name, 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin_Precast);
    end 

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local diff = gData.GetBuffCount('Diffusion');
    local ca = gData.GetBuffCount('Chain Affinity');
    local ba = gData.GetBuffCount('Burst Affinity');
    local ef = gData.GetBuffCount('Efflux');
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.BluMagical);
    if (gcinclude.BluMagDebuff:contains(spell.Name)) then gFunc.EquipSet(sets.BluMagicAccuracy)
    elseif (gcinclude.BluMagStun:contains(spell.Name)) then gFunc.EquipSet(sets.BluStun);
    elseif (gcinclude.BluMagBuff:contains(spell.Name)) then gFunc.EquipSet(sets.CMP);
    elseif (gcinclude.BluMagSkill:contains(spell.Name)) then gFunc.EquipSet(sets.BluSkill);
    elseif (gcinclude.BluMagCure:contains(spell.Name)) then gFunc.EquipSet(sets.Cure);
    elseif (gcinclude.BluMagEnmity:contains(spell.Name)) then gFunc.EquipSet(sets.Enmity);
    elseif string.match(spell.Name, 'White Wind') then gFunc.EquipSet(sets.WhiteWind);
    elseif string.match(spell.Name, 'Evryone. Grudge') or string.match(spell.Name, 'Tenebral Crush') then gFunc.EquipSet(sets.BluDark);
    end

    if (ca>=1) then gFunc.EquipSet(sets.Ca) end
    if (ba>=1) then gFunc.EquipSet(sets.Ba) end
    if (ef>=1) then gFunc.EquipSet(sets.Efflux) end
    if (diff>=1) then gFunc.EquipSet(sets.Diffusion) end
    
    if (gcdisplay.GetToggle('CJmode') == true) then
        gFunc.EquipSet(sets.CJmid);
    end

    if (gcinclude.BluMagTH:contains(spell.Name)) and (gcdisplay.GetToggle('TH') == true) then
        gFunc.EquipSet(sets.TH);
    end
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
   
        if string.match(ws.Name, 'Chant du Cygne') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')) end
	    elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')) end
        elseif string.match(ws.Name, 'Expiacion') then
            gFunc.EquipSet(sets.Expiacion_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Expiacion_' .. gcdisplay.GetCycle('MeleeSet')) end
        elseif string.match(ws.Name, 'Requiescat') then
            gFunc.EquipSet(sets.Requiescat_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Requiescat_' .. gcdisplay.GetCycle('MeleeSet')) end
        end
    end
end

return profile;