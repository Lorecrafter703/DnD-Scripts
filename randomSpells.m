% Daniel Zeman Random Spells Function
addpath(pwd)

function S=randSpells(spellNumber, levelWeight)
  S = cell(1,spellNumber);
  totalWeight = sum(levelWeight);

for i=1:spellNumber
  SL=randi([1,totalWeight]);

  switch true
    case SL >= 0 && SL <= levelWeight(1)
      SN=randi([1,46]);
      switch SN
        case 1
          S{1,i} = 'Acid Splash';
        case 2
          S{1,i} = 'Blade Ward';
        case 3
          S{1,i} = 'Booming Blade';
        case 4
          S{1,i} = 'Chill Touch';
        case 5
          S{1,i} = 'Control Flames';
        case 6
          S{1,i} = 'Create Bonfire';
        case 7
          S{1,i} = 'Dancing Lights';
        case 8
          S{1,i} = 'Decompose';
        case 9
          S{1,i} = 'Druidcraft';
        case 10
          S{1,i} = 'Eldritch Blast';
        case 11
          S{1,i} = 'Encode Thoughts';
        case 12
          S{1,i} = 'Fire Bolt';
        case 13
          S{1,i} = 'Friends';
        case 14
          S{1,i} = 'Frostbite';
        case 15
          S{1,i} = 'Green-Flame Blade';
        case 16
          S{1,i} = 'Guidance';
        case 17
          S{1,i} = 'Gust';
        case 18
          S{1,i} = 'Hand of Radiance';
        case 19
          S{1,i} = 'Infestation';
        case 20
          S{1,i} = 'Light';
        case 21
          S{1,i} = 'Lightning Lure';
        case 22
          S{1,i} = 'Mage Hand';
        case 23
          S{1,i} = 'Magic Stone';
        case 24
          S{1,i} = 'Mending';
        case 25
          S{1,i} = 'Message';
        case 26
          S{1,i} = 'Mind Sliver';
        case 27
          S{1,i} = 'Minor Illusion';
        case 28
          S{1,i} = 'Mold Earth';
        case 29
          S{1,i} = 'Poison Spray';
        case 30
          S{1,i} = 'Prestidigitation';
        case 31
          S{1,i} = 'Primal Savagery';
        case 32
          S{1,i} = 'Produce Flame';
        case 33
          S{1,i} = 'Ray of Frost';
        case 34
          S{1,i} = 'Resistance';
        case 35
          S{1,i} = 'Sacred Flame';
        case 36
          S{1,i} = 'Sapping Sting';
        case 37
          S{1,i} = 'Shape Water';
        case 38
          S{1,i} = 'Shillelagh';
        case 39
          S{1,i} = 'Shocking Grasp';
        case 40
          S{1,i} = 'Spare the Dying';
        case 41
          S{1,i} = 'Sword Burst';
        case 42
          S{1,i} = 'Thaumaturgy';
        case 43
          S{1,i} = 'Thorn Whip';
        case 44
          S{1,i} = 'Thunderclap';
        case 45
          S{1,i} = 'Toll the Dead';
        case 46
          S{1,i} = 'True Strike';
        case 47
          S{1,i} = 'Vicious Mockery';
        case 48
          S{1,i} = 'Virtue';
        case 49
          S{1,i} = 'Word of Radiance';
      endswitch
    case SL >= levelWeight(1)+1 && SL <= sum(levelWeight(1:2))
      SN=randi([1,89]);
      switch SN
        case 1
          S{1,i} = 'Absorb Elements';
        case 2
          S{1,i} = 'Acid Stream';
        case 3
          S{1,i} = 'Alarm';
        case 4
          S{1,i} = 'Animal Friendship';
        case 5
          S{1,i} = 'Arcane Weapon';
        case 6
          S{1,i} = 'Armor of Agathys';
        case 7
          S{1,i} = 'Arms of Hadar';
        case 8
          S{1,i} = 'Bane';
        case 9
          S{1,i} = 'Beast Bond';
        case 10
          S{1,i} = 'Bless';
        case 11
          S{1,i} = 'Burning Hands';
        case 12
          S{1,i} = 'Catapult';
        case 13
          S{1,i} = 'Cause Fear';
        case 14
          S{1,i} = 'Ceremony';
        case 15
          S{1,i} = 'Chaos Bolt';
        case 16
          S{1,i} = 'Charm Person';
        case 17
          S{1,i} = 'Chromatic Orb';
        case 18
          S{1,i} = 'Color Spray';
        case 19
          S{1,i} = 'Command';
        case 20
          S{1,i} = 'Compelled Duel';
        case 21
          S{1,i} = 'Comprehend Languages';
        case 22
          S{1,i} = 'Create or Destroy Water';
        case 23
          S{1,i} = 'Cure Wounds';
        case 24
          S{1,i} = 'Detect Evil and Good';
        case 25
          S{1,i} = 'Detect Magic';
        case 26
          S{1,i} = 'Detect Poison and Disease';
        case 27
          S{1,i} = 'Disguise Self';
        case 28
          S{1,i} = 'Dissonant Whispers';
        case 29
          S{1,i} = 'Distort Value';
        case 30
          S{1,i} = 'Divine Favor';
        case 31
          S{1,i} = 'Earth Tremor';
        case 32
          S{1,i} = 'Ensnaring Strike';
        case 33
          S{1,i} = 'Entangle';
        case 34
          S{1,i} = 'Expeditious Retreat';
        case 35
          S{1,i} = 'Faerie Fire';
        case 36
          S{1,i} = 'False Life';
        case 37
          S{1,i} = 'Feather Fall';
        case 38
          S{1,i} = 'Find Familiar';
        case 39
          S{1,i} = 'Fog Cloud';
        case 40
          S{1,i} = 'Frost Fingers';
        case 41
          S{1,i} = 'Gift of Alacrity';
        case 42
          S{1,i} = 'Goodberry';
        case 43
          S{1,i} = 'Grease';
        case 44
          S{1,i} = 'Guiding Bolt';
        case 45
          S{1,i} = 'Guiding Hand';
        case 46
          S{1,i} = 'Hail of Thorns';
        case 47
          S{1,i} = 'Healing Elixer';
        case 48
          S{1,i} = 'Healing Word';
        case 49
          S{1,i} = 'Hellish Rebuke';
        case 50
          S{1,i} = 'Heroism';
        case 51
          S{1,i} = 'Hex';
        case 52
          S{1,i} = 'Hunters Mark';
        case 53
          S{1,i} = 'Ice Knife';
        case 54
          S{1,i} = 'Id Insinuation';
        case 55
          S{1,i} = 'Identify';
        case 56
          S{1,i} = 'Illusory Script';
        case 57
          S{1,i} = 'Inflict Wounds';
        case 58
          S{1,i} = 'Jims Magic Missile';
        case 59
          S{1,i} = 'Jump';
        case 60
          S{1,i} = 'Longstrider';
        case 61
          S{1,i} = 'Mage Armor';
        case 62
          S{1,i} = 'Magic Missile';
        case 63
          S{1,i} = 'Magnify Gravity';
        case 64
          S{1,i} = 'Protection from Evil and Good';
        case 65
          S{1,i} = 'Puppet';
        case 66
          S{1,i} = 'Purify Food and Drink';
        case 67
          S{1,i} = 'Ray of Sickness';
        case 68
          S{1,i} = 'Sanctuary';
        case 69
          S{1,i} = 'Searing Smite';
        case 70
          S{1,i} = 'Sense Emotion';
        case 71
          S{1,i} = 'Shield';
        case 72
          S{1,i} = 'Shield of Faith';
        case 7
          S{1,i} = 'Silent Image';
        case 74
          S{1,i} = 'Silvery Barbs';
        case 75
          S{1,i} = 'Sleep';
        case 76
          S{1,i} = 'Snare';
        case 77
          S{1,i} = 'Speak with Animals';
        case 78
          S{1,i} = 'Sudden Awakening';
        case 79
          S{1,i} = 'Tashas Caustic Brew';
        case 80
          S{1,i} = 'Tashas Hideous Laughter';
        case 81
          S{1,i} = 'Tensers Floating Disk';
        case 82
          S{1,i} = 'Thunderous Smite';
        case 83
          S{1,i} = 'Thunderwave';
        case 84
          S{1,i} = 'Unearthly Chorus';
        case 85
          S{1,i} = 'Unseen Servant';
        case 86
          S{1,i} = 'Wild Cunning';
        case 87
          S{1,i} = 'Witch Bolt';
        case 88
          S{1,i} = 'Wrathful Smite';
        case 89
          S{1,i} = 'Zephyr Strike';
      endswitch
    case SL >= sum(levelWeight(1:2))+1 && SL <= sum(levelWeight(1:3))
      SN=randi([1,92]);
      switch SN
        case 1
          S{1,i} = 'Aganazzars Scorcher';
        case 2
          S{1,i} = 'Aid';
        case 3
          S{1,i} = 'Air Bubble';
        case 4
          S{1,i} = 'Alter Self';
        case 5
          S{1,i} = 'Animal Messenger';
        case 6
          S{1,i} = 'Arcane Lock';
        case 7
          S{1,i} = 'Augury';
        case 8
          S{1,i} = 'Barkskin';
        case 9
          S{1,i} = 'Beast Sense';
        case 10
          S{1,i} = 'Blindness/Deafness';
        case 11
          S{1,i} = 'Blur';
        case 12
          S{1,i} = 'Borrowed Knowledge';
        case 13
          S{1,i} = 'Branding Smite';
        case 14
          S{1,i} = 'Calm Emotions';
        case 15
          S{1,i} = 'Cloud of Daggers';
        case 16
          S{1,i} = 'Continual Flame';
        case 17
          S{1,i} = 'Cordon of Arrows';
        case 18
          S{1,i} = 'Crown of Madness';
        case 19
          S{1,i} = 'Darkness';
        case 20
          S{1,i} = 'Darkvision';
        case 21
          S{1,i} = 'Detect Thoughts';
        case 22
          S{1,i} = 'Dragons Breath';
        case 23
          S{1,i} = 'Dust Devil';
        case 24
          S{1,i} = 'Earthbind';
        case 25
          S{1,i} = 'Enhance Ability';
        case 26
          S{1,i} = 'Enlarge/Reduce';
        case 27
          S{1,i} = 'Enthrall';
        case 28
          S{1,i} = 'Find Steed';
        case 29
          S{1,i} = 'Find Traps';
        case 30
          S{1,i} = 'Flame Blade';
        case 31
          S{1,i} = 'Flaming Sphere';
        case 32
          S{1,i} = 'Flock of Familiars';
        case 33
          S{1,i} = 'Fortunes Favor';
        case 34
          S{1,i} = 'Gentle Repose';
        case 35
          S{1,i} = 'Gift of Gab';
        case 36
          S{1,i} = 'Gust of Wind';
        case 37
          S{1,i} = 'Healing Spirit';
        case 38
          S{1,i} = 'Heat Metal';
        case 39
          S{1,i} = 'Hold Person';
        case 40
          S{1,i} = 'Icingdeaths Frost';
        case 41
          S{1,i} = 'Immovable Object';
        case 42
          S{1,i} = 'Invisibility';
        case 43
          S{1,i} = 'Jims Glowing Coin';
        case 44
          S{1,i} = 'Kinetic Jaunt';
        case 45
          S{1,i} = 'Knock';
        case 46
          S{1,i} = 'Lesser Restoration';
        case 47
          S{1,i} = 'Levitate';
        case 48
          S{1,i} = 'Locate Animals or Plants';
        case 49
          S{1,i} = 'Locate Object';
        case 50
          S{1,i} = 'Magic Mouth';
        case 51
          S{1,i} = 'Magic Weapon';
        case 52
          S{1,i} = 'Maximillians Earthen Grasp';
        case 53
          S{1,i} = 'Melfs Acid Arrow';
        case 54
          S{1,i} = 'Mental Barrier';
        case 55
          S{1,i} = 'Mind Spike';
        case 56
          S{1,i} = 'Mind Thrust';
        case 57
          S{1,i} = 'Mirror Image';
        case 58
          S{1,i} = 'Misty Step';
        case 59
          S{1,i} = 'Moonbeam';
        case 60
          S{1,i} = 'Nathairs Mischief';
        case 61
          S{1,i} = 'Nystuls Magic Aura';
        case 62
          S{1,i} = 'Pass Without Trace';
        case 63
          S{1,i} = 'Phantasmal Force';
        case 64
          S{1,i} = 'Prayer of Healing';
        case 65
          S{1,i} = 'Protection from Poison';
        case 66
          S{1,i} = 'Pyrotechnics';
        case 67
          S{1,i} = 'Ray of Enfeeblement';
        case 68
          S{1,i} = 'Rimes Binding Ice';
        case 69
          S{1,i} = 'Rope Trick';
        case 70
          S{1,i} = 'Scorching Ray';
        case 71
          S{1,i} = 'See Invisibility';
        case 72
          S{1,i} = 'Shadow Blade';
        case 73
          S{1,i} = 'Shatter';
        case 74
          S{1,i} = 'Silence';
        case 75
          S{1,i} = 'Skywrite';
        case 76
          S{1,i} = 'Snillocs Snowball Storm';
        case 77
          S{1,i} = 'Spider Climb';
        case 78
          S{1,i} = 'Spike Growth';
        case 79
          S{1,i} = 'Spiritual Weapon';
        case 80
          S{1,i} = 'Spray of Cards';
        case 81
          S{1,i} = 'Suggestion';
        case 82
          S{1,i} = 'Summon Beast';
        case 83
          S{1,i} = 'Tashas Mind Whip';
        case 84
          S{1,i} = 'Thought Shield';
        case 85
          S{1,i} = 'Vortex Warp';
        case 86
          S{1,i} = 'Warding Bond';
        case 87
          S{1,i} = 'Warding Wind';
        case 88
          S{1,i} = 'Warp Sense';
        case 89
          S{1,i} = 'Web';
        case 90
          S{1,i} = 'Wither and Bloom';
        case 91
          S{1,i} = 'Wristpocket';
        case 92
          S{1,i} = 'Zone of Truth';
      endswitch
    case SL >= sum(levelWeight(1:3))+1 && SL <= sum(levelWeight(1:4))
      SN=randi([1,80]);
      switch SN
        case 1
          S{1,i} = 'Animate Dead';
        case 2
          S{1,i} = 'Antagonize';
        case 3
          S{1,i} = 'Ashardalons Stride';
        case 4
          S{1,i} = 'Aura of Vitality';
        case 5
          S{1,i} = 'Beacon of Hope';
        case 6
          S{1,i} = 'Bestow Curse';
        case 7
          S{1,i} = 'Blinding Smite';
        case 8
          S{1,i} = 'Blink';
        case 9
          S{1,i} = 'Call Lightning';
        case 10
          S{1,i} = 'Catnap';
        case 11
          S{1,i} = 'Clairvoyance';
        case 12
          S{1,i} = 'Conjure Animals';
        case 13
          S{1,i} = 'Conjure Barrage';
        case 14
          S{1,i} = 'Conjure Lesser Demon';
        case 15
          S{1,i} = 'Counterspell';
        case 16
          S{1,i} = 'Create Food and Water';
        case 17
          S{1,i} = 'Crusaders Mantle';
        case 18
          S{1,i} = 'Daylight';
        case 19
          S{1,i} = 'Dispel Magic';
        case 20
          S{1,i} = 'Elemental Weapon';
        case 21
          S{1,i} = 'Enemies Abound';
        case 22
          S{1,i} = 'Erupting Earth';
        case 23
          S{1,i} = 'Fast Friends';
        case 24
          S{1,i} = 'Fear';
        case 25
          S{1,i} = 'Feign Death';
        case 26
          S{1,i} = 'Fireball';
        case 27
          S{1,i} = 'Flame Arrows';
        case 28
          S{1,i} = 'Flame Stride';
        case 29
          S{1,i} = 'Fly';
        case 30
          S{1,i} = 'Freedom of the Waves';
        case 31
          S{1,i} = 'Galders Tower';
        case 32
          S{1,i} = 'Gaseous Form';
        case 33
          S{1,i} = 'Glyph of Warding';
        case 34
          S{1,i} = 'Haste';
        case 35
          S{1,i} = 'House of Cards';
        case 36
          S{1,i} = 'Hunger of Hadar';
        case 37
          S{1,i} = 'Hypnotic Pattern';
        case 38
          S{1,i} = 'Incite Greed';
        case 39
          S{1,i} = 'Intellect Fortress';
        case 40
          S{1,i} = 'Leomunds Tiny Hut';
        case 41
          S{1,i} = 'Life Transference';
        case 42
          S{1,i} = 'Lightning Arrow';
        case 43
          S{1,i} = 'Lightning Bolt';
        case 44
          S{1,i} = 'Magic Circle';
        case 45
          S{1,i} = 'Major Image';
        case 46
          S{1,i} = 'Mass Healing Word';
        case 47
          S{1,i} = 'Meld into Stone';
        case 48
          S{1,i} = 'Melfs Minute Meteors';
        case 49
          S{1,i} = 'Motivational Speech';
        case 50
          S{1,i} = 'Nondetection';
        case 51
          S{1,i} = 'Phantom Steed';
        case 52
          S{1,i} = 'Plant Growth';
        case 53
          S{1,i} = 'Protection from Energy';
        case 54
          S{1,i} = 'Psionic Blast';
        case 55
          S{1,i} = 'Pulse Wave';
        case 56
          S{1,i} = 'Remove Curse';
        case 57
          S{1,i} = 'Revivify';
        case 58
          S{1,i} = 'Sending';
        case 59
          S{1,i} = 'Sleet Storm';
        case 60
          S{1,i} = 'Slow';
        case 61
          S{1,i} = 'Speak with Dead';
        case 62
          S{1,i} = 'Speak with Plants';
        case 63
          S{1,i} = 'Spirit Guardians';
        case 64
          S{1,i} = 'Spirit Shroud';
        case 65
          S{1,i} = 'Stinking Cloud';
        case 66
          S{1,i} = 'Summon Fey';
        case 67
          S{1,i} = 'Summon Lesser Demons';
        case 68
          S{1,i} = 'Summon Shadowspawn';
        case 69
          S{1,i} = 'Summon Undead';
        case 70
          S{1,i} = 'Summon Warrior Spirit';
        case 71
          S{1,i} = 'Thunder Step';
        case 72
          S{1,i} = 'Tidal Wave';
        case 73
          S{1,i} = 'Tiny Servant';
        case 74
          S{1,i} = 'Tongues';
        case 75
          S{1,i} = 'Vampiric Touch';
        case 76
          S{1,i} = 'Wall of Sand';
        case 77
          S{1,i} = 'Wall of Water';
        case 78
          S{1,i} = 'Water Breathing';
        case 79
          S{1,i} = 'Water Walk';
        case 80
          S{1,i} = 'Wind Wall';
      endswitch
    case SL >= sum(levelWeight(1:4))+1 && SL <= sum(levelWeight(1:5))
      SN=randi([1,58]);
      switch SN
        case 1
          S{1,i} = 'Arcane Eye';
        case 2
          S{1,i} = 'Aura of Life';
        case 3
          S{1,i} = 'Aura of Purity';
        case 4
          S{1,i} = 'Banishment';
        case 5
          S{1,i} = 'Blight';
        case 6
          S{1,i} = 'Charm Monster';
        case 7
          S{1,i} = 'Compulsion';
        case 8
          S{1,i} = 'Confusion';
        case 9
          S{1,i} = 'Conjure Barlgura';
        case 10
          S{1,i} = 'Conjure Minor Elementals';
        case 11
          S{1,i} = 'Conjure Shadow Demon';
        case 12
          S{1,i} = 'Conjure Woodland Beings';
        case 13
          S{1,i} = 'Control Water';
        case 14
          S{1,i} = 'Death Ward';
        case 15
          S{1,i} = 'Dimension Door';
        case 16
          S{1,i} = 'Divination';
        case 17
          S{1,i} = 'Dominate Beast';
        case 18
          S{1,i} = 'Ego Whip';
        case 19
          S{1,i} = 'Elemental Bane';
        case 20
          S{1,i} = 'Evards Black Tentacles';
        case 21
          S{1,i} = 'Fabricate';
        case 22
          S{1,i} = 'Find Greater Steed';
        case 23
          S{1,i} = 'Fire Shield';
        case 24
          S{1,i} = 'Freedom of Movement';
        case 25
          S{1,i} = 'Galders Speedy Courier';
        case 26
          S{1,i} = 'Gate Seal';
        case 27
          S{1,i} = 'Giant Insect';
        case 28
          S{1,i} = 'Grasping Vine';
        case 29
          S{1,i} = 'Gravity Sinkhole';
        case 30
          S{1,i} = 'Greater Invisibility';
        case 31
          S{1,i} = 'Guardian of Faith';
        case 32
          S{1,i} = 'Guardian of Nature';
        case 33
          S{1,i} = 'Hallucinatory Terrain';
        case 34
          S{1,i} = 'Ice Storm';
        case 35
          S{1,i} = 'Leomunds Secret Chest';
        case 36
          S{1,i} = 'Locate Creature';
        case 37
          S{1,i} = 'Mordenkainens Faithful Hound';
        case 38
          S{1,i} = 'Mordenkainens Private Sanctum';
        case 39
          S{1,i} = 'Otilukes Resiliant Sphere';
        case 40
          S{1,i} = 'Phantasmal Killer';
        case 41
          S{1,i} = 'Polymorph';
        case 42
          S{1,i} = 'Raulothims Psychic Lance';
        case 43
          S{1,i} = 'Shadow of Moil';
        case 44
          S{1,i} = 'Sickening Radiance';
        case 45
          S{1,i} = 'Spirit of Death';
        case 46
          S{1,i} = 'Staggering Smite';
        case 47
          S{1,i} = 'Stone Shape';
        case 48
          S{1,i} = 'Stoneskin';
        case 49
          S{1,i} = 'Storm Sphere';
        case 50
          S{1,i} = 'Summon Aberration';
        case 51
          S{1,i} = 'Summon Construct';
        case 52
          S{1,i} = 'Summon Elemental';
        case 53
          S{1,i} = 'Summon Greater Demon';
        case 54
          S{1,i} = 'Vitriolic Sphere';
        case 55
          S{1,i} = 'Wall of Fire';
        case 56
          S{1,i} = 'Watery Sphere';
        case 57
          S{1,i} = 'Widogasts Vault of Amber';
        case 58
          S{1,i} = 'Widogasts Web of Fire';
      endswitch
    case SL >= sum(levelWeight(1:5))+1 && SL <= sum(levelWeight(1:6))
      SN=randi([1,63]);
      switch SN
        case 1
          S{1,i} = 'Animate Objects';
        case 2
          S{1,i} = 'Antilife Shell';
        case 3
          S{1,i} = 'Awaken';
        case 4
          S{1,i} = 'Banishing Smite';
        case 5
          S{1,i} = 'Bigbys Hand';
        case 6
          S{1,i} = 'Circle of Power';
        case 7
          S{1,i} = 'Cloudkill';
        case 8
          S{1,i} = 'Commune';
        case 9
          S{1,i} = 'Commune with Nature';
        case 10
          S{1,i} = 'Cone of Cold';
        case 11
          S{1,i} = 'Conjure Elemental';
        case 12
          S{1,i} = 'Conjure Volley';
        case 13
          S{1,i} = 'Conjure Vrock';
        case 14
          S{1,i} = 'Contact Other Plane';
        case 15
          S{1,i} = 'Contagion';
        case 16
          S{1,i} = 'Control Winds';
        case 17
          S{1,i} = 'Creation';
        case 18
          S{1,i} = 'Danse Macabre';
        case 19
          S{1,i} = 'Dawn';
        case 20
          S{1,i} = 'Destructive Wave';
        case 21
          S{1,i} = 'Dispel Evil and Good';
        case 22
          S{1,i} = 'Dominate Person';
        case 23
          S{1,i} = 'Dream';
        case 24
          S{1,i} = 'Enervation';
        case 25
          S{1,i} = 'Far Step';
        case 26
          S{1,i} = 'Flame Strike';
        case 27
          S{1,i} = 'Freedom of the Winds';
        case 28
          S{1,i} = 'Geas';
        case 29
          S{1,i} = 'Greater Restoration';
        case 30
          S{1,i} = 'Hallow';
        case 31
          S{1,i} = 'Hold Monster';
        case 32
          S{1,i} = 'Holy Weapon';
        case 33
          S{1,i} = 'Immolation';
        case 34
          S{1,i} = 'Infernal Calling';
        case 35
          S{1,i} = 'Insect Plague';
        case 36
          S{1,i} = 'Legend Lore';
        case 37
          S{1,i} = 'Maelstrom';
        case 38
          S{1,i} = 'Mass Cure Wounds';
        case 39
          S{1,i} = 'Mislead';
        case 40
          S{1,i} = 'Modify Memory';
        case 41
          S{1,i} = 'Negative Energy Flood';
        case 42
          S{1,i} = 'Passwall';
        case 43
          S{1,i} = 'Planar Binding';
        case 44
          S{1,i} = 'Raise Dead';
        case 45
          S{1,i} = 'Rarys Telepathic Bond';
        case 46
          S{1,i} = 'Reincarnate';
        case 47
          S{1,i} = 'Scrying';
        case 48
          S{1,i} = 'Seeming';
        case 49
          S{1,i} = 'Skill Empowerment';
        case 50
          S{1,i} = 'Steel Wind Strike';
        case 51
          S{1,i} = 'Summon Celestial';
        case 52
          S{1,i} = 'Summon Draconic Spirit';
        case 53
          S{1,i} = 'Swift Quiver';
        case 54
          S{1,i} = 'Synaptic Static';
        case 55
          S{1,i} = 'Telekinesis';
        case 56
          S{1,i} = 'Teleportation Circle';
        case 57
          S{1,i} = 'Temporal Shunt';
        case 58
          S{1,i} = 'Transmute Rock';
        case 59
          S{1,i} = 'Tree Stride';
        case 60
          S{1,i} = 'Wall of Force';
        case 61
          S{1,i} = 'Wall of Light';
        case 62
          S{1,i} = 'Wall of Stone';
        case 63
          S{1,i} = 'Wrath of Nature';
      endswitch
    case SL >= sum(levelWeight(1:6))+1 && SL <= sum(levelWeight(1:7))
      SN=randi([1,51]);
      switch SN
        case 1
          S{1,i} = 'Arcane Gate';
        case 2
          S{1,i} = 'Blade Barrier';
        case 3
          S{1,i} = 'Bones of the Earth';
        case 4
          S{1,i} = 'Chain Lightning';
        case 5
          S{1,i} = 'Circle of Death';
        case 6
          S{1,i} = 'Conjure Fey';
        case 7
          S{1,i} = 'Contingency';
        case 8
          S{1,i} = 'Create Homunculus';
        case 9
          S{1,i} = 'Create Undead';
        case 10
          S{1,i} = 'Disintegrate';
        case 11
          S{1,i} = 'Drawnijs Instant Summons';
        case 12
          S{1,i} = 'Druid Grove';
        case 13
          S{1,i} = 'Eyebite';
        case 14
          S{1,i} = 'Find the Path';
        case 15
          S{1,i} = 'Fizbans Platinum Shield';
        case 16
          S{1,i} = 'Flesh to Stone';
        case 17
          S{1,i} = 'Forbiddance';
        case 18
          S{1,i} = 'Globe of Invulnerability';
        case 19
          S{1,i} = 'Gravity Fissure';
        case 20
          S{1,i} = 'Guards and Wards';
        case 21
          S{1,i} = 'Harm';
        case 22
          S{1,i} = 'Heal';
        case 23
          S{1,i} = 'Heroes Feast';
        case 24
          S{1,i} = 'Investiture of Flame';
        case 25
          S{1,i} = 'Investiture of Ice';
        case 26
          S{1,i} = 'Investiture of Stone';
        case 27
          S{1,i} = 'Investiture of Wind';
        case 28
          S{1,i} = 'Magic Jar';
        case 29
          S{1,i} = 'Mass Suggestion';
        case 30
          S{1,i} = 'Mental Prison';
        case 31
          S{1,i} = 'Move Earth';
        case 32
          S{1,i} = 'Otherworldly Form';
        case 33
          S{1,i} = 'Otilukes Freezing Sphere';
        case 34
          S{1,i} = 'Ottos Irresistable Dance';
        case 35
          S{1,i} = 'Planar Ally';
        case 36
          S{1,i} = 'Primordial Ward';
        case 37
          S{1,i} = 'Programmed Illusion';
        case 38
          S{1,i} = 'Psychic Crush';
        case 39
          S{1,i} = 'Scatter';
        case 40
          S{1,i} = 'Soul Cage';
        case 41
          S{1,i} = 'Summon Fiend';
        case 42
          S{1,i} = 'Sunbeam';
        case 43
          S{1,i} = 'Tashas Otherworldly Guise';
        case 44
          S{1,i} = 'Tensers Transformation';
        case 45
          S{1,i} = 'Transport via Plants';
        case 46
          S{1,i} = 'True Seeing';
        case 47
          S{1,i} = 'Wall of Ice';
        case 48
          S{1,i} = 'Wall of Thorns';
        case 49
          S{1,i} = 'Widogasts Transmogrification';
        case 50
          S{1,i} = 'Wind Walk';
        case 51
          S{1,i} = 'Word of Recall';
      endswitch
    case SL >= sum(levelWeight(1:7))+1 && SL <= sum(levelWeight(1:8))
      SN=randi([1,29]);
      switch SN
        case 1
          S{1,i} = 'Conjure Celestial';
        case 2
          S{1,i} = 'Conjure Hezrou';
        case 3
          S{1,i} = 'Create Magen';
        case 4
          S{1,i} = 'Crown of Stars';
        case 5
          S{1,i} = 'Delayed Fireball Blast';
        case 6
          S{1,i} = 'Divine Word';
        case 7
          S{1,i} = 'Draconic Transformation';
        case 8
          S{1,i} = 'Dream of the Blue Veil';
        case 9
          S{1,i} = 'Etherealness';
        case 10
          S{1,i} = 'Finger of Death';
        case 11
          S{1,i} = 'Fire Storm';
        case 12
          S{1,i} = 'Forcecage';
        case 13
          S{1,i} = 'Mirage Arcane';
        case 14
          S{1,i} = 'Mordenkainens Magnificent Mansion';
        case 15
          S{1,i} = 'Mordenkainens Sword';
        case 16
          S{1,i} = 'Plane Shift';
        case 17
          S{1,i} = 'Power Word: Pain';
        case 18
          S{1,i} = 'Prismatic Spray';
        case 19
          S{1,i} = 'Project Image';
        case 20
          S{1,i} = 'Regenerate';
        case 21
          S{1,i} = 'Resurrection';
        case 22
          S{1,i} = 'Reverse Gravity';
        case 23
          S{1,i} = 'Sequester';
        case 24
          S{1,i} = 'Simulacrum';
        case 25
          S{1,i} = 'Symbol';
        case 26
          S{1,i} = 'Teleport';
        case 27
          S{1,i} = 'Temple of the Gods';
        case 28
          S{1,i} = 'Tether Essence';
        case 29
          S{1,i} = 'Whirlwind';
      endswitch
    case SL >= sum(levelWeight(1:8))+1 && SL <= sum(levelWeight(1:9))
      SN=randi([1,24]);
      switch SN
        case 1
          S{1,i} = 'Abi-Dalzims Horrid Wilting';
        case 2
          S{1,i} = 'Animal Shapes';
        case 3
          S{1,i} = 'Antimagic Field';
        case 4
          S{1,i} = 'Antipathy/Sympathy';
        case 5
          S{1,i} = 'Clone';
        case 6
          S{1,i} = 'Control Weather';
        case 7
          S{1,i} = 'Dark Star';
        case 8
          S{1,i} = 'Demiplane';
        case 9
          S{1,i} = 'Dominate Monster';
        case 10
          S{1,i} = 'Earthquake';
        case 11
          S{1,i} = 'Feeblemind';
        case 12
          S{1,i} = 'Glibness';
        case 13
          S{1,i} = 'Holy Aura';
        case 14
          S{1,i} = 'Illusory Dragon';
        case 15
          S{1,i} = 'Incendiary Cloud';
        case 16
          S{1,i} = 'Maddening Darkness';
        case 17
          S{1,i} = 'Maze';
        case 18
          S{1,i} = 'Mighty Fortress';
        case 19
          S{1,i} = 'Mind Blank';
        case 20
          S{1,i} = 'Power Word: Stun';
        case 21
          S{1,i} = 'Reality Break';
        case 22
          S{1,i} = 'Sunburst';
        case 23
          S{1,i} = 'Telepathy';
        case 24
          S{1,i} = 'Tsunami';
      endswitch
    case SL >= sum(levelWeight(1:9)) && SL <= sum(levelWeight(1:10))
      SN=randi([1,22]);
      switch SN
        case 1
          S{1,i} = 'Astral Projection';
        case 2
          S{1,i} = 'Blade of Disaster';
        case 3
          S{1,i} = 'Foresight';
        case 4
          S{1,i} = 'Gate';
        case 5
          S{1,i} = 'Imprisonment';
        case 6
          S{1,i} = 'Invulnerability';
        case 7
          S{1,i} = 'Mass Heal';
        case 8
          S{1,i} = 'Mass Polymorph';
        case 9
          S{1,i} = 'Meteor Swarm';
        case 10
          S{1,i} = 'Power Word: Heal';
        case 11
          S{1,i} = 'Power Word: Kill';
        case 12
          S{1,i} = 'Prismatic Wall';
        case 13
          S{1,i} = 'Psychic Scream';
        case 14
          S{1,i} = 'Ravenous Void';
        case 15
          S{1,i} = 'Shapechange';
        case 16
          S{1,i} = 'Storm of Vengeance';
        case 17
          S{1,i} = 'Time Ravage';
        case 18
          S{1,i} = 'Time Stop';
        case 19
          S{1,i} = 'True Polymorph';
        case 20
          S{1,i} = 'True Resurrection';
        case 21
          S{1,i} = 'Weird';
        case 22
          S{1,i} = 'Wish';
      endswitch
  endswitch
endfor

for i=1:spellNumber
  fprintf("Spell %g: %s\n", i, S{1,i});
endfor
end

%levelWeight = [0 9 7 7 5 5 3 3 3 1];
levelWeight_str = input('Enter desired weight for each spell level, from 0-9, seperated by spaces: ', 's');
levelWeight = str2num(levelWeight_str);
%spellNumber = 8;
spellNumber = input('How many spells would you like to generate?: ');
S=randSpells(spellNumber,levelWeight);
