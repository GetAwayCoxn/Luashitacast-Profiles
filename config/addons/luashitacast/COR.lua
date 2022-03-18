local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = T{
    Idle = {
        Range = 'Holliday',
        Head = 'Malignance Chapeau',
        Neck = 'Bathy Choker +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Karieyh Ring',
        Back = { Name = 'Brigantia\'s Mantle', Augment = { [1] = 'STR+30', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Lanun Bottes +2',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Bathy Choker +1',
    },
    Idle_Refresh = {},
    Town = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Holliday',
        Head = 'Cumulus Masque',
        Neck = 'Anu Torque',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Cessance Earring',
        Body = 'Tanner\'s Apron',
        Hands = 'Malignance Gloves',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Ilabrat Ring',
        Back = { Name = 'Brigantia\'s Mantle', Augment = { [1] = 'STR+30', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Lanun Bottes +2',
    },

    Dt = {
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Flume Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Range = 'Holliday',
        Head = 'Adhemar Bonnet +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Herculean Vest',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Ilabrat Ring',
        Back = { Name = 'Brigantia\'s Mantle', Augment = { [1] = 'STR+30', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Carmine Cuisses +1',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+20', [2] = 'Attack+6', [3] = 'AGI+1', [4] = '"Triple Atk."+3' } },
    },
    Tp_Hybrid = {
        Head = 'Malignance Chapeau',
        Hands = 'Malignance Gloves',
    },
    Tp_Acc = {
    },


    Precast = {
        Neck = 'Baetyl Pendant',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Taeon Tabard',
        Ring1 = 'Prolix Ring',
        Legs = 'Enif Cosciales',
    },


    Cure = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Rufescent Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Legs = 'Carmine Cuisses +1',
    },

    Enhancing = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Enfeebling = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {},

    Drain = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Hecate\'s Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {--base preshot, no flurry
        Waist = 'Impulse Belt',
        Legs = 'Adhemar Kecks +1',
    },
    Preshot_FlurryI = {--with flurry I on
    },
    Preshot_FlurryII = {--with flurry II on
    },
    Midshot = {
        Head = 'Malignance Chapeau',
        Neck = 'Marked Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
        Hands = 'Malignance Gloves',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Ilabrat Ring',
        Waist = 'Aquiline Belt',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Nyame Sollerets',
    },
    Midshot_Acc = {
        Ear2 = 'Crep. Earring',
        Legs = 'Ikenga\'s Trousers',
    },
    TripleShot = {
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Rufescent Ring',
        Ring2 = 'Karieyh Ring',
        Legs = 'Nyame Flanchard',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Savage_Default = {
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Moonshade Earring',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Rufescent Ring',
        Ring2 = 'Karieyh Ring',
        Waist = 'Sailfi Belt +1',
        Legs = 'Mummu Kecks +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+30', [2] = 'Weapon skill damage +8%', [3] = 'Attack+6', [4] = 'Mag. Acc.+2' } },
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
        Ear1 = 'Telos Earring',
    },

    Evisceration_Default = {
        Head = 'Adhemar Bonnet +1', 
        Neck = 'Fotia Gorget',
        Ear1 = 'Odr Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Mummu Wrists +2',
        Ring1 = 'Rufescent Ring',
        Ring2 = 'Begrudging Ring',
        Waist = 'Fotia Belt',
        Legs = 'Mummu Kecks +2',
        Feet = 'Mummu Gamash. +2',
    },
    Evisceration_Hybrid = {
    },
    Evisceration_Acc = {
    },

    Aedge_Default = {
        Head = 'Adhemar Bonnet +1', 
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Shiva Ring +1',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Fotia Belt',
        Legs = 'Mummu Kecks +2',
        Feet = 'Lanun Bottes +2',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Laststand_Default = {
        Head = 'Adhemar Bonnet +1', 
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Rufescent Ring',
        Ring2 = 'Karieyh Ring',
        Waist = 'Fotia Belt',
        Legs = 'Mummu Kecks +2',
        Feet = 'Lanun Bottes +2',
    },
    Laststand_Hybrid = {
    },
    Laststand_Acc = {
    },

    Wildfire_Default = {
        Head = 'Adhemar Bonnet +1', 
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Ilabrat Ring',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Aquiline Belt',
        Legs = 'Mummu Kecks +2',
        Feet = 'Lanun Bottes +2',
    },
    Wildfire_Hybrid = {
    },
    Wildfire_Acc = {
    },

    Leaden_Default = {
        Head = 'Adhemar Bonnet +1', 
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Mummu Jacket +2',
        Hands = 'Meg. Gloves +2',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Archon Ring',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Aquiline Belt',
        Legs = 'Mummu Kecks +2',
        Feet = 'Lanun Bottes +2',
    },
    Leaden_Hybrid = {
    },
    Leaden_Acc = {
    },

    QD = {
        Ammo = 'Animikii Bullet',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Rawhide Vest',
        Ring1 = 'Dingir Ring',
        Ring2 = 'Shiva Ring +1',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Aquiline Belt',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Lanun Bottes +2',
    },
    QD_Acc = {
        Head = 'Malignance Chapeau',
        Neck = 'Sanctity Necklace',
        Ear2 = 'Crep. Earring',
        Body = 'Nyame Mail',
        Hands = 'Malignance Gloves',
        Ring1 = 'Crepuscular Ring',
        Ring2 = 'Metamor. Ring +1',
        Legs = 'Ikenga\'s Trousers',
        Feet = 'Nyame Sollerets',
    },
    Rolls = {
        Range = 'Compensator',
    },
    WildCard = {Feet = 'Lanun Bottes +2'},
    Movement = {
        Legs = 'Carmine Cuisses +1',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 10');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');

    gcinclude.CORmsg = true; -- set this to false if you do not want to see lucky/unlucky # messages, can also do /cormsg in game to change on the fly
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

    if (ability.Name:contains('Roll')) then
        gFunc.EquipSet(sets.Dt);
        gFunc.EquipSet(sets.Rolls);
        gcinclude.DoCORmsg(ability.Name);
    elseif (ability.Name == 'Wild Card') then
        gFunc.EquipSet(sets.WildCard);
    elseif (ability.Name:contains('Shot')) then
        gFunc.EquipSet(sets.QD);
        if (gcdisplay.GetCycle('Melee') == 'Acc') or (ability.Name == 'Dark Shot') or (ability.Name == 'Light Shot') then
            gFunc.EquipSet(sets.QD_Acc);
        end
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
end

profile.HandlePreshot = function()
    local flurryI = gData.GetBuffCount(265);
    local flurryII = gData.GetBuffCount(581);

    gFunc.EquipSet(sets.Preshot);

    if flurryII < 0 then
        gFunc.EquipSet(sets.Preshot_FlurryII);
    elseif flurryI < 0 then
        gFunc.EquipSet(sets.Preshot_FlurryI);
    end
end

profile.HandleMidshot = function()
    local triple = gData.GetBuffCount('Triple Shot');
    gFunc.EquipSet(sets.Midshot);

    if triple > 0 then
        gFunc.EquipSet(sets.TripleShot);
    end

    if (gcdisplay.GetCycle('MeleeSet') == 'Acc') then
        gFunc.EquipSet(sets.Midshot_Acc);
    end
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end
        
        if string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Evisceration') then
            gFunc.EquipSet(sets.Evisceration_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Evisceration_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Last Stand') then
            gFunc.EquipSet(sets.Laststand_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Laststand_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Wildfire') then
            gFunc.EquipSet(sets.Wildfire_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Wildfire_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Leaden Salute') then
            gFunc.EquipSet(sets.Leaden_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Leaden_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
