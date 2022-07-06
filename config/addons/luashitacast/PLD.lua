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
        Body = 'Hjarrandi Breast.',
        Hands = 'Volte Moufles',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Flume Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },
    Resting = {},
    Idle_Regen = {
        Head = 'Crepuscular Helm',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Head = 'Jumalik Helm',
        Ring1 = 'Stikini Ring +1',
    },
    Town = {
        Main = 'Excalibur',
        Sub = 'Aegis',
        Ammo = 'Staunch Tathlum',
        Head = 'Jumalik Helm',
        Body = 'Found. Breastplate',
        Hands = 'Volte Moufles',
        Legs = 'Carmine Cuisses +1',
        Feet = 'Cab. Leggings +1',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck ='Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Flume Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Coiste Bodhar',
        Head = 'Flam. Zucchetto +2',
        Neck ='Sanctity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Flamma Korazin +2',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Flam. Gambieras +2',
    },
    Tp_Hybrid = {
        Ammo = 'Coiste Bodhar',
        Head = 'Hjarrandi Helm',
        Neck ='Sanctity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Flam. Gambieras +2',
    },
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },

    --These will overwrite any above TP sets if /tankset is used
    Tank_Main = {--Default Tanking,  dt 
        Ammo = 'Staunch Tathlum',
        Head = 'Souv. Schaller +1',
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Ethereal Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
        },
    Tank_MEVA = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Vengeful Ring',
        Ring2 = 'Purity Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Asklepian Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Precast = {--44 w/o Loquac due to HP drop
        Ammo = 'Sapience Orb',--2
        Head = 'Chev. Armet +1',--7
        Neck = 'Baetyl Pendant',--4
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Etiolation Earring',--1
        Body = 'Rev. Surcoat +2',--5
        Hands = 'Leyline Gloves',--6
        Ring2 = 'Kishar Ring',--4
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },--10
        Waist = 'Creed Baudrier',
        Legs = 'Enif Cosciales',--8
        Feet = 'Carmine Greaves +1',--7
    },
    Cure_Precast = {
        --Ear1 = 'Mendi. Earring',
        Ear2 = 'Nourish. Earring +1',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    SIR = {--10 merits,101 gear
        Ammo = 'Staunch Tathlum', -- 10
        Head = 'Souv. Schaller +1', --20
        Neck = 'Moonlight Necklace', -- 15
        --Body = 'Yorium Cuirass', -- 10
        Waist = 'Creed Baudrier',
        Legs = 'Founder\'s Hose', -- 30
        Feet = 'Odyssean Greaves', -- 26
    },
    Enmity = {
        Ammo = 'Sapience Orb',--2
        Head = 'Souv. Schaller +1',--9
        Neck = 'Moonlight Necklace', -- 15--10
        Body = 'Cab. Surcoat +3',--10
        Ring1 = 'Eihwaz Ring',--5
        Ring2 = 'Supershear Ring',--5
        Ear1 = 'Friomisi Earring',--2
        Ear2 = 'Cryptic Earring',--4
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },--10
        Waist = 'Creed Baudrier',--5
        Feet = 'Eschite Greaves',--15
    },

    Cure = {
        Ammo = 'Staunch Tathlum',
        Head = 'Souv. Schaller +1', --15rec
        Neck = 'Moonlight Necklace', -- 15
        --Ear1 = 'Tuisto Earring',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Nourish. Earring +1', -- 6
        Body = 'Yorium Cuirass',--sir10
        Hands = 'Macabre Gaunt. +1', -- 11
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape', -- 7
        Waist = 'Audumbla Sash',
        Legs = 'Founder\'s Hose',
        Feet = 'Odyssean Greaves', -- 7
    },
    Phalanx = {
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Yorium Cuirass', -- 3
        Hands = 'Odyssean Gauntlets', --3
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },--10
        Waist = 'Audumbla Sash',
        Legs = 'Sakpata\'s Cuisses', -- 5
        Feet = 'Odyssean Greaves',
    },
    Reprisal = {
        Ammo = 'Sapience Orb',
        Head = 'Souv. Schaller +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Cryptic Earring',
        Body = 'Shab. Cuirass +1',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },--10
        Waist = 'Audumbla Sash',
        Legs = 'Founder\'s Hose',
        Feet = 'Eschite Greaves',
    },
    Flash = {
        Ammo = 'Staunch Tathlum',
        Head = 'Souv. Schaller +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Cryptic Earring',
        Body = 'Rev. Surcoat +2',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Supershear Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Audumbla Sash',
        Legs = 'Founder\'s Hose',
        Feet = 'Odyssean Greaves',
    },

    Preshot = {},
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
    },

    Ws_Default = {
        Ammo = 'Ginsen',
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Valorous Greaves',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Chant_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Blistering Sallet +1',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Moonshade Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Flam. Manopolas +2',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Begrudging Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Accuracy+20', [2] = 'Crit.hit rate+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Feet = 'Thereoid Greaves',
    },
    Chant_Hybrid = {
    },
    Chant_Acc = {
    },
    Savage_Default = {
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Sakpata\'s Gauntlets',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Atone_Default = {
        Ammo = 'Staunch Tathlum',
        Head = 'Souv. Schaller +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Moonshade Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Supershear Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },
    Atone_Hybrid = {
    },
    Atone_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
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
    Aedge_Hybrid = {},
    Aedge_Acc = {},

    Fealty = {
        Body = 'Cab. Surcoat +3',
    },
    Sentinel = {
        Feet = 'Cab. Leggings +1',
    },
    Bash = {
        Hands = 'Cab. Gauntlets',
    },
    Invincible = {
        Legs = 'Cab. Breeches',
    },
    Cover = {
        Body = 'Cab. Surcoat +3',
        Head = 'Rev. Coronet +1',
    },
    Rampart = {
        Head = 'Cab. Coronet +1',
    },
    
    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
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
	
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')); end
        if (gcdisplay.GetCycle('TankSet') ~= 'None') then
        gFunc.EquipSet('Tank_' .. gcdisplay.GetCycle('TankSet')); end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    local cover = gData.GetBuffCount('Cover');
	if (cover >= 1) then
		gFunc.EquipSet(sets.Fealty); -- same set as fealty
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
	if string.match(ability.Name, 'Fealty') then
		gFunc.EquipSet(sets.Fealty);
    elseif string.match(ability.Name, 'Sentinel') then
		gFunc.EquipSet(sets.Sentinel);
    elseif string.match(ability.Name, 'Sheild Bash') or string.match(ability.Name, 'Chivalry') then
		gFunc.EquipSet(sets.Bash);
    elseif string.match(ability.Name, 'Invincible') then
		gFunc.EquipSet(sets.Invincible);
    elseif string.match(ability.Name, 'Cover') then
		gFunc.EquipSet(sets.Cover);
    elseif string.match(ability.Name, 'Rampart') then
		gFunc.EquipSet(sets.Rampart);
	end

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
    gFunc.EquipSet(sets.SIR);

    if string.contains(spell.Name, 'Cur') then
        gFunc.EquipSet(sets.Cure);
    elseif string.match(spell.Name, 'Phalanx') then
        gFunc.EquipSet(sets.Phalanx);
    elseif string.match(spell.Name, 'Reprisal') then
        gFunc.EquipSet(sets.Reprisal);
    elseif string.match(spell.Name, 'Flash') then
        gFunc.EquipSet(sets.Flash);
    else
        gFunc.EquipSet(sets.Enmity);
    end

    if (gcdisplay.GetToggle('SIR') == true) then
        gFunc.EquipSet(sets.SIR);
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
   
        if string.match(ws.Name, 'Chant du Cygne') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')); end
	    elseif string.match(ws.Name, 'Savage Blade') or string.match(ws.Name, 'Knights of Round') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Atonement') then
            gFunc.EquipSet(sets.Atone_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Atone_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
