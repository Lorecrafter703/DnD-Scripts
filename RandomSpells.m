function RandomSpells()

    % Create the main figure
    fig = figure('Name', 'Random Spells', 'Position', [1400, 100, 400, 200]);

    % Text Box Descriptions
    uicontrol('Style', 'text', 'String', 'Cantrips', 'Position', [0, 130, 100, 20]);
    uicontrol('Style', 'text', 'String', '1st Level', 'Position', [100, 130, 100, 20]);
    uicontrol('Style', 'text', 'String', '2nd Level', 'Position', [200, 130, 100, 20]);
    uicontrol('Style', 'text', 'String', '3rd Level', 'Position', [300, 130, 100, 20]);
    uicontrol('Style', 'text', 'String', '4th Level', 'Position', [0, 80, 100, 20]);
    uicontrol('Style', 'text', 'String', '5th Level', 'Position', [100, 80, 100, 20]);
    uicontrol('Style', 'text', 'String', '6th Level', 'Position', [200, 80, 100, 20]);
    uicontrol('Style', 'text', 'String', '7th Level', 'Position', [300, 80, 100, 20]);
    uicontrol('Style', 'text', 'String', '8th Level', 'Position', [0, 30, 100, 20]);
    uicontrol('Style', 'text', 'String', '9th Level', 'Position', [100, 30, 100, 20]);
    uicontrol('Style', 'text', 'String', 'Total Number', 'Position', [200, 30, 100, 20]);
    uicontrol('Style', 'text', 'String', 'Enter Weight by Spell Level & Total Number of Spells', 'Position', [0, 150, 400, 50]);

    % Create text boxes
    edit1 = uicontrol('Style', 'edit', 'Position', [0, 100, 100, 30]);
    edit2 = uicontrol('Style', 'edit', 'Position', [100, 100, 100, 30]);
    edit3 = uicontrol('Style', 'edit', 'Position', [200, 100, 100, 30]);
    edit4 = uicontrol('Style', 'edit', 'Position', [300, 100, 100, 30]);
    edit5 = uicontrol('Style', 'edit', 'Position', [0, 50, 100, 30]);
    edit6 = uicontrol('Style', 'edit', 'Position', [100, 50, 100, 30]);
    edit7 = uicontrol('Style', 'edit', 'Position', [200, 50, 100, 30]);
    edit8 = uicontrol('Style', 'edit', 'Position', [300, 50, 100, 30]);
    edit9 = uicontrol('Style', 'edit', 'Position', [0, 0, 100, 30]);
    edit10 = uicontrol('Style', 'edit', 'Position', [100, 0, 100, 30]);
    edit11 = uicontrol('Style', 'edit', 'Position', [200, 0, 100, 30]);

    % Create a button
    button = uicontrol('Style', 'pushbutton', 'String', 'Run Function', 'Position', [300, 0, 100, 50], 'Callback', @buttonCallback);

    % Callback function for the button
    function buttonCallback(~, ~)
        % Get user input from text boxes
        input1 = str2num(get(edit1, 'String'));
        input2 = str2num(get(edit2, 'String'));
        input3 = str2num(get(edit3, 'String'));
        input4 = str2num(get(edit4, 'String'));
        input5 = str2num(get(edit5, 'String'));
        input6 = str2num(get(edit6, 'String'));
        input7 = str2num(get(edit7, 'String'));
        input8 = str2num(get(edit8, 'String'));
        input9 = str2num(get(edit9, 'String'));
        input10 = str2num(get(edit10, 'String'));
        input11 = str2num(get(edit11, 'String'));

        % Set the variables
        % Cantrips
        if isempty(input1) == 0
          levelWeight(1) = input1;
        else
          levelWeight(1) = 0;
        endif
        % 1st Level
        if isempty(input2) == 0
          levelWeight(2) = input2;
        else
          levelWeight(2) = 0;
        endif
        % 2nd Level
        if isempty(input3) == 0
          levelWeight(3) = input3;
        else
          levelWeight(3) = 0;
        endif
        % 3rd Level
        if isempty(input4) == 0
          levelWeight(4) = input4;
        else
          levelWeight(4) = 0;
        endif
        % 4th Level
        if isempty(input5) == 0
          levelWeight(5) = input5;
        else
          levelWeight(5) = 0;
        endif
        % 5th Level
        if isempty(input6) == 0
          levelWeight(6) = input6;
        else
          levelWeight(6) = 0;
        endif
        % 6th Level
        if isempty(input7) == 0
          levelWeight(7) = input7;
        else
          levelWeight(7) = 0;
        endif
        % 7th Level
        if isempty(input8) == 0
          levelWeight(8) = input8;
        else
          levelWeight(8) = 0;
        endif
        % 8th Level
        if isempty(input9) == 0
          levelWeight(9) = input9;
        else
          levelWeight(9) = 0;
        endif
        % 9th Level
        if isempty(input10) == 0
          levelWeight(10) = input10;
        else
          levelWeight(10) = 0;
        endif
        % Total Number of Spells
        if isempty(input11) == 0
          spellNumber = input11;
        else
          spellNumber = 1;
        endif

        % If no inputs, set all to 1
        if sum(levelWeight) == 0
          levelWeight = [1 1 1 1 1 1 1 1 1 1];
        endif

        % Call your specified function with user input
        S = randSpells(spellNumber,levelWeight);

        % Initialize an empty string to store the output
        outputString = '';

        % Display the result (you can customize this part)
        % Build the output string using fprintf
        for i = 1:spellNumber
          outputString = [outputString, sprintf('Spell %g: %s\n', i, S{1, i}{1})];
        end

        % Display the output in a message box
        msgbox(outputString, 'Spell Information');
    end

    % Keep the figure open
    uiwait(fig);

    % Example function to be called
    function S=randSpells(spellNumber, levelWeight)
      S = cell(1,spellNumber);
      totalWeight = sum(levelWeight);
      Spells0 = {"Acid Splash","Blade Ward","Booming Blade","Chill Touch","Control Flames","Create Bonfire","Dancing Lights","Decompose","Druidcraft","Eldritch Blast","Encode Thoughts","Fire Bolt","Friends","Frostbite","Green-Flame Blade","Guidance","Gust","Hand of Radiance","Infestation","Light","Lightning Lure","Mage Hand","Magic Stone","Mending","Message","Mind Sliver","Minor Illusion","Mold Earth","Poison Spray","Prestidigitation","Primal Savagery","Produce Flame","Ray of Frost","Resistance","Sacred Flame","Sapping Sting","Shape Water","Shillelagh","Shocking Grasp","Spare the Dying","Sword Burst","Thaumaturgy","Thorn WHip","Thunderclap","Toll the Dead","True Strike","Vicious Mockery","Virtue","Word of Radiance"};
      Spells1 = {'Absorb Elements','Acid Stream','Alarm','Animal Friendship','Arcane Weapon','Armor of Agathys','Arms of Hadar','Bane','Beast Bond','Bless','Burning Hands','Catapult','Cause Fear','Ceremony','Chaos Bolt','Charm Person','Chromatic Orb','Color Spray','Command','Compelled Duel','Comprehend Languages','Create or Destroy Water','Cure Wounds','Detect Evil and Good','Detect Magic','Detect Poison and Disease','Disguise Self','Dissonant Whispers','Distort Value','Divine Favor','Earth Tremor','Ensnaring Strike','Entangle','Expeditious Retreat','Faerie Fire','False Life','Feather Fall','Find Familiar','Fog Cloud','Frost Fingers','Gift of Alacrity','Goodberry','Grease','Guiding Bolt','Guiding Hand','Hail of Thorns','Healing Elixer','Healing Word','Hellish Rebuke','Heroism','Hex','Hunters Mark','Ice Knife','Id Insinuation','Identify','Illusory Script','Inflict Wounds','Jims Magic Missile','Jump','Longstrider','Mage Armor','Magic Missile','Magnify Gravity','Protection from Evil and Good','Puppet','Purify Food and Drink','Ray of Sickness','Sanctuary','Searing Smite','Sense Emotion','Shield','Shield of Faith','Silent Image','Silvery Barbs','Sleep','Snare','Speak with Animals','Sudden Awakening','Tashas Caustic Brew','Tashas Hideous Laughter','Tensers Floating Disk','Thunderous Smite','Thunderwave','Unearthly Chorus','Unseen Servant','Wild Cunning','Witch Bolt','Wrathful Smite','Zephyr Strike'};
      Spells2 = {'Aganazzars Scorcher','Aid','Air Bubble','Alter Self','Animal Messenger','Arcane Lock','Augury','Barkskin','Beast Sense','Blindness/Deafness','Blur','Borrowed Knowledge','Branding Smite','Calm Emotions','Cloud of Daggers','Continual Flame','Cordon of Arrows','Crown of Madness','Darkness','Darkvision','Detect Thoughts','Dragons Breath','Dust Devil','Earthbind','Enhance Ability','Enlarge/Reduce','Enthrall','Find Steed','Find Traps','Flame Blade','Flaming Sphere','Flock of Familiars','Fortunes Favor','Gentle Repose','Gift of Gab','Gust of Wind','Healing Spirit','Heat Metal','Hold Person','Icingdeaths Frost','Immovable Object','Invisibility','Jims Glowing Coin','Kinetic Jaunt','Knock','Lesser Restoration','Levitate','Locate Animals or Plants','Locate Object','Magic Mouth','Magic Weapon','Maximillians Earthen Grasp','Melfs Acid Arrow','Mental Barrier','Mind Spike','Mind Thrust','Mirror Image','Misty Step','Moonbeam','Nathairs Mischief','Nystuls Magic Aura','Pass Without Trace','Phantasmal Force','Prayer of Healing','Protection from Poison','Pyrotechnics','Ray of Enfeeblement','Rimes Binding Ice','Rope Trick','Scorching Ray','See Invisibility','Shadow Blade','Shatter','Silence','Skywrite','Snillocs Snowball Storm','Spider Climb','Spike Growth','Spiritual Weapon','Spray of Cards','Suggestion','Summon Beast','Tashas Mind Whip','Thought Shield','Vortex Warp','Warding Bond','Warding Wind','Warp Sense','Web','Wither and Bloom','Wristpocket','Zone of Truth'};
      Spells3 = {'Animate Dead','Antagonize','Ashardalons Stride','Aura of Vitality','Beacon of Hope','Bestow Curse','Blinding Smite','Blink','Call Lightning','Catnap','Clairvoyance','Conjure Animals','Conjure Barrage','Conjure Lesser Demon','Counterspell','Create Food and Water','Crusaders Mantle','Daylight','Dispel Magic','Elemental Weapon','Enemies Abound','Erupting Earth','Fast Friends','Fear','Feign Death','Fireball','Flame Arrows','Flame Stride','Fly','Freedom of the Waves','Galders Tower','Gaseous Form','Glyph of Warding','Haste','House of Cards','Hunger of Hadar','Hypnotic Pattern','Incite Greed','Intellect Fortress','Leomunds Tiny Hut','Life Transference','Lightning Arrow','Lightning Bolt','Magic Circle','Major Image','Mass Healing Word','Meld into Stone','Melfs Minute Meteors','Motivational Speech','Nondetection','Phantom Steed','Plant Growth','Protection from Energy','Psionic Blast','Pulse Wave','Remove Curse','Revivify','Sending','Sleet Storm','Slow','Speak with Dead','Speak with Plants','Spirit Guardians','Spirit Shroud','Stinking Cloud','Summon Fey','Summon Lesser Demons','Summon Shadowspawn','Summon Undead','Summon Warrior Spirit','Thunder Step','Tidal Wave','Tiny Servant','Tongues','Vampiric Touch','Wall of Sand','Wall of Water','Water Breathing','Water Walk','Wind Wall'};
      Spells4 = {'Arcane Eye','Aura of Life','Aura of Purity','Banishment','Blight','Charm Monster','Compulsion','Confusion','Conjure Barlgura','Conjure Minor Elementals','Conjure Shadow Demon','Conjure Woodland Beings','Control Water','Death Ward','Dimension Door','Divination','Dominate Beast','Ego Whip','Elemental Bane','Evards Black Tentacles','Fabricate','Find Greater Steed','Fire Shield','Freedom of Movement','Galders Speedy Courier','Gate Seal','Giant Insect','Grasping Vine','Gravity Sinkhole','Greater Invisibility','Guardian of Faith','Guardian of Nature','Hallucinatory Terrain','Ice Storm','Leomunds Secret Chest','Locate Creature','Mordenkainens Faithful Hound','Mordenkainens Private Sanctum','Otilukes Resiliant Sphere','Phantasmal Killer','Polymorph','Raulothims Psychic Lance','Shadow of Moil','Sickening Radiance','Spirit of Death','Staggering Smite','Stone Shape','Stoneskin','Storm Sphere','Summon Aberration','Summon Construct','Summon Elemental','Summon Greater Demon','Vitriolic Sphere','Wall of Fire','Watery Sphere','Widogasts Vault of Amber','Widogasts Web of Fire'};
      Spells5 = {'Animate Objects','Antilife Shell','Awaken','Banishing Smite','Bigbys Hand','Circle of Power','Cloudkill','Commune','Commune with Nature','Cone of Cold','Conjure Elemental','Conjure Volley','Conjure Vrock','Contact Other Plane','Contagion','Control Winds','Creation','Danse Macabre','Dawn','Destructive Wave','Dispel Evil and Good','Dominate Person','Dream','Enervation','Far Step','Flame Strike','Freedom of the Winds','Geas','Greater Restoration','Hallow','Hold Monster','Holy Weapon','Immolation','Infernal Calling','Insect Plague','Legend Lore','Maelstrom','Mass Cure Wounds','Mislead','Modify Memory','Negative Energy Flood','Passwall','Planar Binding','Raise Dead','Rarys Telepathic Bond','Reincarnate','Scrying','Seeming','Skill Empowerment','Steel Wind Strike','Summon Celestial','Summon Draconic Spirit','Swift Quiver','Synaptic Static','Telekinesis','Teleportation Circle','Temporal Shunt','Transmute Rock','Tree Stride','Wall of Force','Wall of Light','Wall of Stone','Wrath of Nature'};
      Spells6 = {'Arcane Gate','Blade Barrier','Bones of the Earth','Chain Lightning','Circle of Death','Conjure Fey','Contingency','Create Homunculus','Create Undead','Disintegrate','Drawnijs Instant Summons','Druid Grove','Eyebite','Find the Path','Fizbans Platinum Shield','Flesh to Stone','Forbiddance','Globe of Invulnerability','Gravity Fissure','Guards and Wards','Harm','Heal','Heroes Feast','Investiture of Flame','Investiture of Ice','Investiture of Stone','Investiture of Wind','Magic Jar','Mass Suggestion','Mental Prison','Move Earth','Otherworldly Form','Otilukes Freezing Sphere','Ottos Irresistable Dance','Planar Ally','Primordial Ward','Programmed Illusion','Psychic Crush','Scatter','Soul Cage','Summon Fiend','Sunbeam','Tashas Otherworldly Guise','Tensers Transformation','Transport via Plants','True Seeing','Wall of Ice','Wall of Thorns','Widogasts Transmogrification','Wind Walk','Word of Recall'};
      Spells7 = {'Conjure Celestial','Conjure Hezrou','Create Magen','Crown of Stars','Delayed Fireball Blast','Divine Word','Draconic Transformation','Dream of the Blue Veil','Etherealness','Finger of Death','Fire Storm','Forcecage','Mirage Arcane','Mordenkainens Magnificent Mansion','Mordenkainens Sword','Plane Shift','Power Word: Pain','Prismatic Spray','Project Image','Regenerate','Resurrection','Reverse Gravity','Sequester','Simulacrum','Symbol','Teleport','Temple of the Gods','Tether Essence','Whirlwind'};
      Spells8 = {'Abi-Dalzims Horrid Wilting','Animal Shapes','Antimagic Field','Antipathy/Sympathy','Clone','Control Weather','Dark Star','Demiplane','Dominate Monster','Earthquake','Feeblemind','Glibness','Holy Aura','Illusory Dragon','Incendiary Cloud','Maddening Darkness','Maze','Mighty Fortress','Mind Blank','Power Word: Stun','Reality Break','Sunburst','Telepathy','Tsunami'};
      Spells9 = {'Astral Projection','Blade of Disaster','Foresight','Gate','Imprisonment','Invulnerability','Mass Heal','Mass Polymorph','Meteor Swarm','Power Word: Heal','Power Word: Kill','Prismatic Wall','Psychic Scream','Ravenous Void','Shapechange','Storm of Vengeance','Time Ravage','Time Stop','True Polymorph','True Resurrection','Weird','Wish'};

      for i=1:spellNumber
        SL=randi([1,totalWeight]);

        switch true
          case SL >= 0 && SL <= levelWeight(1)
            S0=size(Spells0,2);
            SN=randi([1,S0]);
            S{1,i} = Spells0(SN);
          case SL >= levelWeight(1)+1 && SL <= sum(levelWeight(1:2))
            S1=size(Spells1,2);
            SN=randi([1,S1]);
            S{1,i} = Spells1(SN);
          case SL >= sum(levelWeight(1:2))+1 && SL <= sum(levelWeight(1:3))
            S2=size(Spells2,2);
            SN=randi([1,S2]);
            S{1,i} = Spells2(SN);
          case SL >= sum(levelWeight(1:3))+1 && SL <= sum(levelWeight(1:4))
            S3=size(Spells3,2);
            SN=randi([1,S3]);
            S{1,i} = Spells3(SN);
          case SL >= sum(levelWeight(1:4))+1 && SL <= sum(levelWeight(1:5))
            S4=size(Spells4,2);
            SN=randi([1,S4]);
            S{1,i} = Spells4(SN);
          case SL >= sum(levelWeight(1:5))+1 && SL <= sum(levelWeight(1:6))
            S5=size(Spells5,2);
            SN=randi([1,S5]);
            S{1,i} = Spells5(SN);
          case SL >= sum(levelWeight(1:6))+1 && SL <= sum(levelWeight(1:7))
            S6=size(Spells6,2);
            SN=randi([1,S6]);
            S{1,i} = Spells6(SN);
          case SL >= sum(levelWeight(1:7))+1 && SL <= sum(levelWeight(1:8))
            S7=size(Spells7,2);
            SN=randi([1,S7]);
            S{1,i} = Spells7(SN);
          case SL >= sum(levelWeight(1:8))+1 && SL <= sum(levelWeight(1:9))
            S8=size(Spells8,2);
            SN=randi([1,S8]);
            S{1,i} = Spells8(SN);
          case SL >= sum(levelWeight(1:9)) && SL <= sum(levelWeight(1:10))
            S9=size(Spells9,2);
            SN=randi([1,S9]);
            S{1,i} = Spells9(SN);
        endswitch
      endfor

      for i=1:spellNumber
        fprintf("Spell %g: %s\n", i, S{1,i}{1});
      endfor
    end
end
