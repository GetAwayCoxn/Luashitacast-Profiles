local profile = {};
gcdisplay = gFunc.LoadFile('common\\gcdisplay.lua');
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

sets = T{
    Idle = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Genmei Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Fili Manchettes +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Fucho-no-Obi',
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
        Body = 'Gende. Bliaut +1',
    },
    Town = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Brioso Roundlet +2',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = 'Fili Manchettes +1',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Fucho-no-Obi',
        Legs = 'Brioso Cannions +2',
        Feet = 'Fili Cothurnes +1',
    },

    Dt = {
        Sub = 'Genmei Shield',
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
        Main = 'Naegling',
        Sub = 'Genmei Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Nyame Helm',
        Neck = { Name = 'Bard\'s Charm +1', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = { Name = 'Bihu Jstcorps. +3', AugTrial=5481 },
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Ilabrat Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Store TP"+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Bihu Slippers +3',
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },


    Precast = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Haruspex Hat',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Phys. dmg. taken -4%', [2] = 'Song spellcasting time -5%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Embla Sash',
        Legs = 'Brioso Cannions +2',
        Feet = 'Volte Gaiters',
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
    Song_Precast = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Fili Calot +1',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Phys. dmg. taken -4%', [2] = 'Song spellcasting time -5%' } },
        Ring1 = 'Defending Ring',
        Ring2 = 'Kishar Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Embla Sash',
        Legs = 'Brioso Cannions +2',
        Feet = 'Bihu Slippers +3',
    },


    Cure = {
        Main = 'Daybreak',
        Sub = 'Ammurapi Shield',
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
        Legs = 'Vanya Slops',
        Feet = 'Vanya Clogs',
    },
    Self_Cure = {
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Body = 'Telchine Chas.',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },

    Enhancing = {
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Hands = 'Chironic Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Phalanx = {},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },

    Enfeebling = { --need update
        Sub = 'Ammurapi Shield',
        Head = 'Brioso Roundlet +2',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Gwati Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Brioso Cuffs +2',
        Ring1 = 'Kishar Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Brioso Cannions +2',
        Feet = 'Brioso Slippers +3',
    },

    Wind = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Ammurapi Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Brioso Roundlet +2',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Regal Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Brioso Cuffs +2',
        Ring1 = 'Crepuscular Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Brioso Cannions +2',
        Feet = 'Brioso Slippers +3',
    },
    String = { --need update for harps, mostly for Horde Lullaby
        Range = 'Blurred Harp',
        Ear2 = 'Regal Earring',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +3',
    },
    Harp = {--use /forcestring in game to lock this on all songs, I personally just use Paeons
        Range = 'Blurred Harp', -- This should be ur extra song harp, whichever you use
    },
    Buff = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Fili Calot +1',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Fili Hongreline +1',
        Hands = 'Fili Manchettes +1',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Fucho-no-Obi',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +3',
    },
    Paeon = {--I personally force paeons to use my extra song harp, you can also use /forcestring if you want
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = 'Blurred Harp',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Etiolation Earring',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Fucho-no-Obi',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Volte Gaiters',
    },
    March = {
        Hands = 'Fili Manchettes +1',
    },
    Madrigal = {
        Head = 'Fili Calot +1',
    },
    Ballad = {--I dont use this
        --Legs = 'Inyanga Shalwar +2',
    },
    Scherzo = {
        Feet = 'Fili Cothurnes +1',
    },

    Drain = {
    },

    Nuke = {
    },

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Telos Earring',
        Body = 'Bihu Jstcorps. +3',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Store TP"+10', [3] = 'Attack+20', [4] = 'DEX+20' } },
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Bihu Slippers +3',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Savage_Default = {
        Ear1 = 'Moonshade Earring',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
    },
    Savage_Hybrid = {},
    Savage_Acc = {},

    Chant_Default = {
        Head = { Name = 'Blistering Sallet +1', AugPath='A' },
    },
    Chant_Hybrid = {},
    Chant_Acc = {},

    Nitro = {--includes legs for soul voice as well
        Body = 'Bihu Jstcorps. +3',
        Legs = 'Bihu Cannions +1',
        Feet = 'Bihu Slippers +3',
    },

    TH = {--/th will force this set to equip for 10 seconds
		Waist = 'Chaac Belt',
	},
    Movement = {
        Feet = 'Fili Cothurnes +1',
	},
};

sets = sets:merge(gcinclude.sets, false);profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = false;
    gcinclude.Initialize:once(3);

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');
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

        if (gcdisplay.GetToggle('Fight') == false) then
            AshitaCore:GetChatManager():QueueCommand(1, '/fight');
        end
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

    if string.match(ability.Name, 'Troubadour') or string.match(ability.Name, 'Nightingale') or string.match(ability.Name, 'Soul Voice') then gFunc.EquipSet(sets.Nitro) end

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

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    elseif (spell.Skill == 'Singing') then
        gFunc.EquipSet(sets.Song_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Cure);
        end
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);

        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
    elseif (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Paeon')) or (string.contains(spell.Name, 'Mazurka')) then
            gFunc.EquipSet(sets.Paeon);
        else
            gFunc.EquipSet(sets.Buff);
        end
        if (string.contains(spell.Name, 'Requiem')) or (string.contains(spell.Name, 'Elegy')) or (string.contains(spell.Name, 'Threnody')) or (string.contains(spell.Name, 'Finale')) or (string.contains(spell.Name, 'Lullaby')) then
            gFunc.EquipSet(sets.Wind);
        end
        if (string.contains(spell.Name, 'Horde')) then
            gFunc.EquipSet(sets.String);
        elseif (string.contains(spell.Name, 'March')) then
            gFunc.EquipSet(sets.March);
        elseif (string.contains(spell.Name, 'Madrigal')) then
            gFunc.EquipSet(sets.Madrigal);
        elseif (string.contains(spell.Name, 'Scherzo')) then
            gFunc.EquipSet(sets.Scherzo);
        elseif (string.contains(spell.Name, 'Ballad')) then
            gFunc.EquipSet(sets.Ballad);
        end

        if (gcdisplay.GetToggle('String') == true) then
            gFunc.EquipSet(sets.Harp);
        end
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
        end
    end
end

return profile;
