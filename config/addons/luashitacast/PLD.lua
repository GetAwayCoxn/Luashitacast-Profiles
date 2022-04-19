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
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Enmity+10', [2] = 'Eva.+20', [3] = 'HP+60', [4] = 'Mag. Eva.+20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Ring1 = 'Stikini Ring +1',
    },
    Town = {
        Main = 'Excalibur',
        Sub = 'Aegis',
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Body = 'Hjarrandi Breast.',
        Hands = 'Volte Moufles',
        Legs = 'Carmine Cuisses +1',
        Feet = 'Nyame Sollerets',
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
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Enmity+10', [2] = 'Eva.+20', [3] = 'HP+60', [4] = 'Mag. Eva.+20' } },
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
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },

    --These will overwrite any above TP sets if /tankset is used
    Tank_Main = {--Default Tanking,  dt 
        Ammo = 'Staunch Tathlum',
        Head = 'Souv. Schaller +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Hjarrandi Breast.',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Enmity+10', [2] = 'Eva.+20', [3] = 'HP+60', [4] = 'Mag. Eva.+20' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
        },
    Tank_MEVA = {},

    Precast = {
        Ammo = 'Sapience Orb',--2
        Neck = 'Baetyl Pendant',--4
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',--1
        Hands = 'Leyline Gloves',--6
        Ring2 = 'Kishar Ring',--4
        Legs = 'Enif Cosciales',--8
        Feet = 'Odyssean Greaves',--5
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Nourish. Earring +1',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    SIR = {--10 merits,106 gear
        Ammo = 'Staunch Tathlum', -- 10
        Head = 'Souv. Schaller +1', --20
        Neck = 'Moonbeam Necklace', -- 10
        Body = 'Yorium Cuirass', -- 10
        Waist = 'Audumbla Sash', -- 10
        Legs = 'Carmine Cuisses +1', -- 20
        Feet = 'Odyssean Greaves', -- 26
    },
    Enmity = {
        Ammo = 'Sapience Orb',--2
        Head = 'Souv. Schaller +1',--9
        Neck = 'Moonbeam Necklace',--10
        Body = 'Cab. Surcoat +3',--10
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Vengeful Ring',--3
        Ear1 = 'Friomisi Earring',--2
        Ear2 = 'Cryptic Earring',--4
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Enmity+10', [2] = 'Eva.+20', [3] = 'HP+60', [4] = 'Mag. Eva.+20' } },--10
        Waist = 'Creed Baudrier',--5
        Feet = 'Eschite Greaves',
    },

    Cure = {--51, +25 from majesty
        Head = 'Souv. Schaller +1', --15
        Ear1 = 'Mendi. Earring', -- 5
        Ear2 = 'Nourish. Earring +1', -- 6
        Hands = 'Macabre Gaunt. +1', -- 11
        Ring1 = 'Stikini Ring +1',
        Back = 'Solemnity Cape', -- 7
        Feet = 'Odyssean Greaves', -- 7
    },
    Phalanx = {
        Neck = 'Incanter\'s Torque',
        Ear2 = 'Andoaa Earring',
        Body = 'Yorium Cuirass', -- 3
        Hands = 'Odyssean Gauntlets', --3
        Ring1 = 'Stikini Ring +1',
        Legs = 'Sakpata\'s Cuisses', -- 5
    },
    Stoneskin = {
        Waist = 'Siegel Sash',
    },
    Reprisal = {
        Ammo = 'Sapience Orb',
        Ear2 = 'Cryptic Earring',
        Neck = 'Moonbeam Necklace',
        Body = 'Shabti Cuirass',
        Waist = 'Creed Baudrier',
        Feet = 'Eschite Greaves',
    },
    Enlight = {
        Neck = 'Incanter\'s Torque',
        Body = 'Rev. Surcoat +1',
        Hands = 'Eschite Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Back = 'Altruistic Cape',
        Waist = 'Asklepian Belt',
    },

    Preshot = {},
    Midshot = {},

    Ws_Default = {
        Ammo = 'Ginsen',
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Rufescent Ring',
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
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Aedge_Default = {
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Fealty = {
        Body = 'Cab. Surcoat +3',
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
    elseif string.match(spell.Name, 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
    elseif string.match(spell.Name, 'Reprisal') then
        gFunc.EquipSet(sets.Reprisal);
    elseif string.contains(spell.Name, 'Enlight') then
        gFunc.EquipSet(sets.Enlight);
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
	    elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
