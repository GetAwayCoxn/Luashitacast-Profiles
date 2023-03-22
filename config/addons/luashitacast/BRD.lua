local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
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
        Main = { Name = 'Kali', AugPath='C' },
        Legs = 'Assid. Pants +1',
        Feet = 'Volte Gaiters',
    },
    Town = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = 'Daurdabla',
        Head = 'Pixie Hairpin +1',
        Neck = 'Mnbw. Whistle +1',
        Body = 'Fili Hongreline +1',
        Hands = 'Fili Manchettes +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
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
        Range = 'Linos',
        Head = 'Nyame Helm',
        Neck = { Name = 'Bard\'s Charm +1', AugPath='A' },
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = { Name = 'Bihu Jstcorps. +3', AugTrial=5481 },
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Chirich Ring +1',
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


    Precast = { --74
        Main = { Name = 'Kali', AugPath='C' }, --7
        Sub = 'Genmei Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Haruspex Hat', --8
        Neck = 'Baetyl Pendant', --4
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring', --1
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Leyline Gloves', --6
        Ring1 = 'Prolix Ring', --2
        Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Embla Sash', --5
        Legs = 'Aya. Cosciales +2', --6
        Feet = 'Volte Gaiters', --6
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
    Song_Precast = { --87
        Main = 'Bihu Knife', --20
        Sub = 'Genmei Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Fili Calot +1', --14
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring', --1
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Leyline Gloves', --6
        Ring1 = 'Defending Ring',
        Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Embla Sash', --5
        Legs = 'Aya. Cosciales +2', --6
        Feet = 'Volte Gaiters', --6
    },


    Cure = {--I cap is 50, II cap is 30
        Main = 'Bunzi\'s Rod',--I 30
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Nodens Gorget',--I 5
        Ear1 = 'Mendi. Earring',--I 5
        Ear2 = 'Regal Earring',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Aurist\'s Cape +1',
        Waist = 'Rumination Sash',
        Feet = 'Vanya Clogs',--I 10
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
        Body = 'Telchine Chas.',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
        Feet = 'Vanya Clogs',
    },

    Enhancing = {
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Hands = 'Nyame Gauntlets',
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
        Ear2 = 'Crep. Earring',
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
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Regal Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Inyan. Dastanas +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Brioso Cannions +2',
        Feet = 'Brioso Slippers +3',
    },
    Harp = {--use /forcestring in game to lock this on all songs, I personally just use Paeons
        Range = 'Daurdabla', -- This should be ur extra song harp, whichever you use
    },
    Foe = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Ammurapi Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Brioso Roundlet +2', --bihu roundlet +3
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'Crep. Earring',
        Ear2 = 'Regal Earring',
        Body = 'Fili Hongreline +1',
        Hands = 'Inyan. Dastanas +2', -- brioso cuffs +3
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +3',
    },
    Horde = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Ammurapi Shield',
        Range = 'Daurdabla',
        Head = 'Brioso Roundlet +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'Crep. Earring',
        -- Ear1 = 'Gersemi Earring',
        Ear2 = 'Regal Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Inyan. Dastanas +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' }, -- string skill here
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +3',
    },
    Buff = {
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Genmei Shield',
        Range = { Name = 'Gjallarhorn', AugTrial=3591 },
        Head = 'Fili Calot +1',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Etiolation Earring',
        Body = 'Fili Hongreline +1',
        Hands = 'Fili Manchettes +1',
        Ring1 = 'Defending Ring',
        Ring2 = { Name = 'Gelatinous Ring +1', AugPath='A' },
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Damage taken-5%', [2] = '"Fast Cast"+10', [3] = 'Mag. Acc.+10', [4] = 'Mag. Acc+20', [5] = 'CHR+20', [6] = 'Magic Damage +20' } },
        Waist = 'Flume Belt +1',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +3',
    },
    Paeon = {--I personally use paeons to force my extra song harp, you can also use /forcestring if you want
        Main = { Name = 'Kali', AugPath='C' },
        Sub = 'Culminus',
        Range = 'Daurdabla',
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
    Ballad = {
        Legs = 'Fili Rhingrave +1',
    },
    Scherzo = {
        Feet = 'Fili Cothurnes +1',
    },

    Drain = {},
    Nuke = {},
    Preshot = {},
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Range = 'Linos',
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Mache Earring +1',
        Ear2 = 'Telos Earring',
        Body = 'Bihu Jstcorps. +3',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'STR+7', [2] = 'Weapon skill damage +10%', [3] = 'Attack+6', [4] = 'Accuracy+6' } },
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Bihu Slippers +3',
    },
    Ws_Hybrid = {},
    Ws_Acc = {},

    Savage_Default = {
        Range = 'Linos',
        Neck = 'Bard\'s Charm +1',
        Body = 'Bihu Jstcorps. +3',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Karieyh Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'STR+7', [2] = 'Weapon skill damage +10%', [3] = 'Attack+6', [4] = 'Accuracy+6' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
    },
    Savage_Hybrid = {},
    Savage_Acc = {},

    Nitro = {--includes legs for soul voice as well
        Body = 'Bihu Jstcorps. +3',
        Legs = 'Bihu Cannions +1',
        Feet = 'Bihu Slippers +3',
    },

    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    Movement = {
        Feet = 'Fili Cothurnes +1',
	},
};
profile.Sets = sets;

profile.Packer = {
    --{Name = 'Chonofuda', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
	
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
        if (gcdisplay.GetToggle('Fight') == false) then AshitaCore:GetChatManager():QueueCommand(1, '/fight') end
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
        if (string.contains(spell.Name, 'Horde Lullaby')) then
            gFunc.EquipSet(sets.Horde);
        elseif (string.contains(spell.Name, 'Foe Lullaby')) then
            gFunc.EquipSet(sets.Foe);
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
   
        if string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
