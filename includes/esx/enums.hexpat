#pragma once

// ImHex 1.35.4 Pattern File
// Author: C3pa


enum ESFileType : s32 {
	ESP = 0,
	ESM = 1,
	ESS = 32,
};

enum GlobalType : char {
	GLOBAL_SHORT = 's',
	GLOBAL_LONG  = 'l',
	GLOBAL_FLOAT = 'f',
};

enum Attribute : s32 {
	ATTRIBUTE_NONE = -1,
	ATTRIBUTE_STRENGTH,
	ATTRIBUTE_INTELLIGENCE,
	ATTRIBUTE_WILLPOWER,
	ATTRIBUTE_AGILITY,
	ATTRIBUTE_SPEED,
	ATTRIBUTE_ENDURANCE,
	ATTRIBUTE_PERSONALITY,
	ATTRIBUTE_LUCK,
};

enum Specialization : s32 {
	SPEC_NONE = -1,
	SPEC_COMBAT,
	SPEC_MAGIC,
	SPEC_STEALTH,
};

enum Skill : s32 {
	SKILL_NONE = -1,
	SKILL_BLOCK,
	SKILL_ARMORER,
	SKILL_MEDIUM_ARMOR,
	SKILL_HEAVY_ARMOR,
	SKILL_BLUNT_WEAPON,
	SKILL_LONG_BLADE,
	SKILL_AXE,
	SKILL_SPEAR,
	SKILL_ATHLETICS,
	SKILL_ENCHANT,
	SKILL_DESTRUCTION,
	SKILL_ALTERATION,
	SKILL_ILLUSION,
	SKILL_CONJURATION,
	SKILL_MYSTICISM,
	SKILL_RESTORATION,
	SKILL_ALCHEMY,
	SKILL_UNARMORED,
	SKILL_SECURITY,
	SKILL_SNEAK,
	SKILL_ACROBATICS,
	SKILL_LIGHT_ARMOR,
	SKILL_SHORT_BLADE,
	SKILL_MARKSMAN,
	SKILL_MERCANTILE,
	SKILL_SPEECHCRAFT,
	SKILL_HAND_TO_HAND,
};

enum MagicEffect : s32 {
	MGEF_WATER_BREATHING,
	MGEF_SWIFT_SWIM,
	MGEF_WATER_WALKING,
	MGEF_SHIELD,
	MGEF_FIRE_SHIELD,
	MGEF_LIGHTNING_SHIELD,
	MGEF_FROST_SHIELD,
	MGEF_BURDEN,
	MGEF_FEATHER,
	MGEF_JUMP,
	MGEF_LEVITATE,
	MGEF_SLOW_FALL,
	MGEF_LOCK,
	MGEF_OPEN,
	MGEF_FIRE_DAMAGE,
	MGEF_SHOCK_DAMAGE,
	MGEF_FROST_DAMAGE,
	MGEF_DRAIN_ATTRIBUTE,
	MGEF_DRAIN_HEALTH,
	MGEF_DRAIN_MAGICKA,
	MGEF_DRAIN_FATIGUE,
	MGEF_DRAIN_SKILL,
	MGEF_DAMAGE_ATTRIBUTE,
	MGEF_DAMAGE_HEALTH,
	MGEF_DAMAGE_MAGICKA,
	MGEF_DAMAGE_FATIGUE,
	MGEF_DAMAGE_SKILL,
	MGEF_POISON,
	MGEF_WEAKNESS_TO_FIRE,
	MGEF_WEAKNESS_TO_FROST,
	MGEF_WEAKNESS_TO_SHOCK,
	MGEF_WEAKNESS_TO_MAGICKA,
	MGEF_WEAKNESS_TO_COMMON_DISEASE,
	MGEF_WEAKNESS_TO_BLIGHT_DISEASE,
	MGEF_WEAKNESS_TO_CORPRUS,
	MGEF_WEAKNESS_TO_POISON,
	MGEF_WEAKNESS_TO_NORMAL_WEAPONS,
	MGEF_DISINTEGRATE_WEAPON,
	MGEF_DISINTEGRATE_ARMOR,
	MGEF_INVISIBILITY,
	MGEF_CHAMELEON,
	MGEF_LIGHT,
	MGEF_SANCTUARY,
	MGEF_NIGHT_EYE,
	MGEF_CHARM,
	MGEF_PARALYZE,
	MGEF_SILENCE,
	MGEF_BLIND,
	MGEF_SOUND,
	MGEF_CALM_HUMANOID,
	MGEF_CALM_CREATURE,
	MGEF_FRENZY_HUMANOID,
	MGEF_FRENZY_CREATURE,
	MGEF_DEMORALIZE_HUMANOID,
	MGEF_DEMORALIZE_CREATURE,
	MGEF_RALLY_HUMANOID,
	MGEF_RALLY_CREATURE,
	MGEF_DISPEL,
	MGEF_SOUL_TRAP,
	MGEF_TELEKINESIS,
	MGEF_MARK,
	MGEF_RECALL,
	MGEF_DIVINE_INTERVENTION,
	MGEF_ALMSIVI_INTERVENTION,
	MGEF_DETECT_ANIMAL,
	MGEF_DETECT_ENCHANTMENT,
	MGEF_DETECT_KEY,
	MGEF_SPELL_ABSORPTION,
	MGEF_REFLECT,
	MGEF_CURE_COMMON_DISEASE,
	MGEF_CURE_BLIGHT_DISEASE,
	MGEF_CURE_CORPRUS,
	MGEF_CURE_POISON,
	MGEF_CURE_PARALYZATION,
	MGEF_RESTORE_ATTRIBUTE,
	MGEF_RESTORE_HEALTH,
	MGEF_RESTORE_MAGICKA,
	MGEF_RESTORE_FATIGUE,
	MGEF_RESTORE_SKILL,
	MGEF_FORTIFY_ATTRIBUTE,
	MGEF_FORTIFY_HEALTH,
	MGEF_FORTIFY_MAGICKA,
	MGEF_FORTIFY_FATIGUE,
	MGEF_FORTIFY_SKILL,
	MGEF_FORTIFY_MAGICKA_MULTIPLIER,
	MGEF_ABSORB_ATTRIBUTE,
	MGEF_ABSORB_HEALTH,
	MGEF_ABSORB_MAGICKA,
	MGEF_ABSORB_FATIGUE,
	MGEF_ABSORB_SKILL,
	MGEF_RESIST_FIRE,
	MGEF_RESIST_FROST,
	MGEF_RESIST_SHOCK,
	MGEF_RESIST_MAGICKA,
	MGEF_RESIST_COMMON_DISEASE,
	MGEF_RESIST_BLIGHT_DISEASE,
	MGEF_RESIST_CORPRUS,
	MGEF_RESIST_POISON,
	MGEF_RESIST_NORMAL_WEAPONS,
	MGEF_RESIST_PARALYSIS,
	MGEF_REMOVE_CURSE,
	MGEF_TURN_UNDEAD,
	MGEF_SUMMON_SCAMP,
	MGEF_SUMMON_CLANNFEAR,
	MGEF_SUMMON_DAEDROTH,
	MGEF_SUMMON_DREMORA,
	MGEF_SUMMON_GHOST,
	MGEF_SUMMON_SKELETON,
	MGEF_SUMMON_LEAST_BONEWALKER,
	MGEF_SUMMON_GREATER_BONEWALKER,
	MGEF_SUMMON_BONELORD,
	MGEF_SUMMON_TWILIGHT,
	MGEF_SUMMON_HUNGER,
	MGEF_SUMMON_GOLDEN_SAINT,
	MGEF_SUMMON_FLAME_ATRONACH,
	MGEF_SUMMON_FROST_ATRONACH,
	MGEF_SUMMON_STORM_ATRONACH,
	MGEF_FORTIFY_ATTACK_BONUS,
	MGEF_COMMAND_CREATURE,
	MGEF_COMMAND_HUMANOID,
	MGEF_BOUND_DAGGER,
	MGEF_BOUND_LONGSWORD,
	MGEF_BOUND_MACE,
	MGEF_BOUND_BATTLE_AXE,
	MGEF_BOUND_SPEAR,
	MGEF_BOUND_LONGBOW,
	MGEF_EXTRA_SPELL,
	MGEF_BOUND_CUIRASS,
	MGEF_BOUND_HELM,
	MGEF_BOUND_BOOTS,
	MGEF_BOUND_SHIELD,
	MGEF_BOUND_GLOVES,
	MGEF_CORPRUS,
	MGEF_VAMPIRISM,
	MGEF_SUMMON_CENTURION_SPHERE,
	MGEF_SUN_DAMAGE,
	MGEF_STUNTED_MAGICKA,
	MGEF_SUMMON_FABRICANT,
	MGEF_SUMMON_WOLF,
	MGEF_SUMMON_BEAR,
	MGEF_SUMMON_BONE_WOLF,
	MGEF_SUMMON04,
	MGEF_SUMMON05,
};

enum SpellSchool : s32 {
	ALTERATION,
	CONJURATION,
	DESTRUCTION,
	ILLUSION,
	MYSTICISM,
	RESTORATION,
};

enum ApparatusType : s32 {
	MORTAR_AND_PESTLE,
	ALEMBIC,
	CALCINATOR,
	RETORT,
};

enum WeaponType : s16 {
	WEAPON_TYPE_SHORT_BLADE_ONE_HAND,
	WEAPON_TYPE_LONG_BLADE_ONE_HAND,
	WEAPON_TYPE_LONG_BLADE_TWO_CLOSE,
	WEAPON_TYPE_BLUNT_ONE_HAND,
	WEAPON_TYPE_BLUNT_TWO_CLOSE,
	WEAPON_TYPE_BLUNT_TWO_WIDE,
	WEAPON_TYPE_SPEAR_TWO_WIDE,
	WEAPON_TYPE_AXE_ONE_HAND,
	WEAPON_TYPE_AXE_TWO_HAND,
	WEAPON_TYPE_MARKSMAN_BOW,
	WEAPON_TYPE_MARKSMAN_CROSSBOW,
	WEAPON_TYPE_MARKSMAN_THROWN,
	WEAPON_TYPE_ARROW,
	WEAPON_TYPE_BOLT,
};

enum SpellType : s32 {
	SPELL_TYPE_SPELL,
	SPELL_TYPE_ABILITY,
	SPELL_TYPE_BLIGHT,
	SPELL_TYPE_DISEASE,
	SPELL_TYPE_CURSE,
	SPELL_TYPE_POWER,
};

enum Effect : s16 {
	EFFECT_NONE = -1,
	EFFECT_WATER_BREATHING,
	EFFECT_SWIFT_SWIM,
	EFFECT_WATER_WALKING,
	EFFECT_SHIELD,
	EFFECT_FIRE_SHIELD,
	EFFECT_LIGHTNING_SHIELD,
	EFFECT_FROST_SHIELD,
	EFFECT_BURDEN,
	EFFECT_FEATHER,
	EFFECT_JUMP,
	EFFECT_LEVITATE,
	EFFECT_SLOW_FALL,
	EFFECT_LOCK,
	EFFECT_OPEN,
	EFFECT_FIRE_DAMAGE,
	EFFECT_SHOCK_DAMAGE,
	EFFECT_FROST_DAMAGE,
	EFFECT_DRAIN_ATTRIBUTE,
	EFFECT_DRAIN_HEALTH,
	EFFECT_DRAIN_MAGICKA,
	EFFECT_DRAIN_FATIGUE,
	EFFECT_DRAIN_SKILL,
	EFFECT_DAMAGE_ATTRIBUTE,
	EFFECT_DAMAGE_HEALTH,
	EFFECT_DAMAGE_MAGICKA,
	EFFECT_DAMAGE_FATIGUE,
	EFFECT_DAMAGE_SKILL,
	EFFECT_POISON,
	EFFECT_WEAKNESS_TO_FIRE,
	EFFECT_WEAKNESS_TO_FROST,
	EFFECT_WEAKNESS_TO_SHOCK,
	EFFECT_WEAKNESS_TO_MAGICKA,
	EFFECT_WEAKNESS_TO_COMMON_DISEASE,
	EFFECT_WEAKNESS_TO_BLIGHT_DISEASE,
	EFFECT_WEAKNESS_TO_CORPRUS,
	EFFECT_WEAKNESS_TO_POISON,
	EFFECT_WEAKNESS_TO_NORMAL_WEAPONS,
	EFFECT_DISINTEGRATE_WEAPON,
	EFFECT_DISINTEGRATE_ARMOR,
	EFFECT_INVISIBILITY,
	EFFECT_CHAMELEON,
	EFFECT_LIGHT,
	EFFECT_SANCTUARY,
	EFFECT_NIGHT_EYE,
	EFFECT_CHARM,
	EFFECT_PARALYZE,
	EFFECT_SILENCE,
	EFFECT_BLIND,
	EFFECT_SOUND,
	EFFECT_CALM_HUMANOID,
	EFFECT_CALM_CREATURE,
	EFFECT_FRENZY_HUMANOID,
	EFFECT_FRENZY_CREATURE,
	EFFECT_DEMORALIZE_HUMANOID,
	EFFECT_DEMORALIZE_CREATURE,
	EFFECT_RALLY_HUMANOID,
	EFFECT_RALLY_CREATURE,
	EFFECT_DISPEL,
	EFFECT_SOUL_TRAP,
	EFFECT_TELEKINESIS,
	EFFECT_MARK,
	EFFECT_RECALL,
	EFFECT_DIVINE_INTERVENTION,
	EFFECT_ALMSIVI_INTERVENTION,
	EFFECT_DETECT_ANIMAL,
	EFFECT_DETECT_ENCHANTMENT,
	EFFECT_DETECT_KEY,
	EFFECT_SPELL_ABSORPTION,
	EFFECT_REFLECT,
	EFFECT_CURE_COMMON_DISEASE,
	EFFECT_CURE_BLIGHT_DISEASE,
	EFFECT_CURE_CORPRUS,
	EFFECT_CURE_POISON,
	EFFECT_CURE_PARALYZATION,
	EFFECT_RESTORE_ATTRIBUTE,
	EFFECT_RESTORE_HEALTH,
	EFFECT_RESTORE_MAGICKA,
	EFFECT_RESTORE_FATIGUE,
	EFFECT_RESTORE_SKILL,
	EFFECT_FORTIFY_ATTRIBUTE,
	EFFECT_FORTIFY_HEALTH,
	EFFECT_FORTIFY_MAGICKA,
	EFFECT_FORTIFY_FATIGUE,
	EFFECT_FORTIFY_SKILL,
	EFFECT_FORTIFY_MAGICKA_MULTIPLIER,
	EFFECT_ABSORB_ATTRIBUTE,
	EFFECT_ABSORB_HEALTH,
	EFFECT_ABSORB_MAGICKA,
	EFFECT_ABSORB_FATIGUE,
	EFFECT_ABSORB_SKILL,
	EFFECT_RESIST_FIRE,
	EFFECT_RESIST_FROST,
	EFFECT_RESIST_SHOCK,
	EFFECT_RESIST_MAGICKA,
	EFFECT_RESIST_COMMON_DISEASE,
	EFFECT_RESIST_BLIGHT_DISEASE,
	EFFECT_RESIST_CORPRUS,
	EFFECT_RESIST_POISON,
	EFFECT_RESIST_NORMAL_WEAPONS,
	EFFECT_RESIST_PARALYSIS,
	EFFECT_REMOVE_CURSE,
	EFFECT_TURN_UNDEAD,
	EFFECT_SUMMON_SCAMP,
	EFFECT_SUMMON_CLANNFEAR,
	EFFECT_SUMMON_DAEDROTH,
	EFFECT_SUMMON_DREMORA,
	EFFECT_SUMMON_GHOST,
	EFFECT_SUMMON_SKELETON,
	EFFECT_SUMMON_LEAST_BONEWALKER,
	EFFECT_SUMMON_GREATER_BONEWALKER,
	EFFECT_SUMMON_BONELORD,
	EFFECT_SUMMON_TWILIGHT,
	EFFECT_SUMMON_HUNGER,
	EFFECT_SUMMON_GOLDEN_SAINT,
	EFFECT_SUMMON_FLAME_ATRONACH,
	EFFECT_SUMMON_FROST_ATRONACH,
	EFFECT_SUMMON_STORM_ATRONACH,
	EFFECT_FORTIFY_ATTACK_BONUS,
	EFFECT_COMMAND_CREATURE,
	EFFECT_COMMAND_HUMANOID,
	EFFECT_BOUND_DAGGER,
	EFFECT_BOUND_LONGSWORD,
	EFFECT_BOUND_MACE,
	EFFECT_BOUND_BATTLE_AXE,
	EFFECT_BOUND_SPEAR,
	EFFECT_BOUND_LONGBOW,
	EFFECT_EXTRA_SPELL,
	EFFECT_BOUND_CUIRASS,
	EFFECT_BOUND_HELM,
	EFFECT_BOUND_BOOTS,
	EFFECT_BOUND_SHIELD,
	EFFECT_BOUND_GLOVES,
	EFFECT_CORPRUS,
	EFFECT_VAMPIRISM,
	EFFECT_SUMMON_CENTURION_SPHERE,
	EFFECT_SUN_DAMAGE,
	EFFECT_STUNTED_MAGICKA,
	EFFECT_SUMMON_FABRICANT,
	EFFECT_SUMMON_WOLF,
	EFFECT_SUMMON_BEAR,
	EFFECT_SUMMON_BONE_WOLF,
	EFFECT_SUMMON04,
	EFFECT_SUMMON05,
};

enum EffectAttribute : s8 {
	EFFECT_ATTRIBUTE_NONE = -1,
	EFFECT_ATTRIBUTE_STRENGTH,
	EFFECT_ATTRIBUTE_INTELLIGENCE,
	EFFECT_ATTRIBUTE_WILLPOWER,
	EFFECT_ATTRIBUTE_AGILITY,
	EFFECT_ATTRIBUTE_SPEED,
	EFFECT_ATTRIBUTE_ENDURANCE,
	EFFECT_ATTRIBUTE_PERSONALITY,
	EFFECT_ATTRIBUTE_LUCK,
};

enum EffectSkill : s8 {
	EFFECT_SKILL_NONE = -1,
	EFFECT_SKILL_BLOCK,
	EFFECT_SKILL_ARMORER,
	EFFECT_SKILL_MEDIUM_ARMOR,
	EFFECT_SKILL_HEAVY_ARMOR,
	EFFECT_SKILL_BLUNT_WEAPON,
	EFFECT_SKILL_LONG_BLADE,
	EFFECT_SKILL_AXE,
	EFFECT_SKILL_SPEAR,
	EFFECT_SKILL_ATHLETICS,
	EFFECT_SKILL_ENCHANT,
	EFFECT_SKILL_DESTRUCTION,
	EFFECT_SKILL_ALTERATION,
	EFFECT_SKILL_ILLUSION,
	EFFECT_SKILL_CONJURATION,
	EFFECT_SKILL_MYSTICISM,
	EFFECT_SKILL_RESTORATION,
	EFFECT_SKILL_ALCHEMY,
	EFFECT_SKILL_UNARMORED,
	EFFECT_SKILL_SECURITY,
	EFFECT_SKILL_SNEAK,
	EFFECT_SKILL_ACROBATICS,
	EFFECT_SKILL_LIGHT_ARMOR,
	EFFECT_SKILL_SHORT_BLADE,
	EFFECT_SKILL_MARKSMAN,
	EFFECT_SKILL_MERCANTILE,
	EFFECT_SKILL_SPEECHCRAFT,
	EFFECT_SKILL_HAND_TO_HAND,
};

enum EffectRange : s32 {
	EFFECT_RANGE_SELF,
	EFFECT_RANGE_TOUCH,
	EFFECT_RANGE_TARGET,
};

enum BodyPart : u8 {
	BODYPART_HEAD,
	BODYPART_HAIR,
	BODYPART_NECK,
	BODYPART_CHEST,
	BODYPART_GROIN,
	BODYPART_HAND,
	BODYPART_WRIST,
	BODYPART_FOREARM,
	BODYPART_UPPER_ARM,
	BODYPART_FOOT,
	BODYPART_ANKLE,
	BODYPART_KNEE,
	BODYPART_UPPER_LEG,
	BODYPART_CLAVICLE,
	BODYPART_TAIL,
};

enum BipedObject : u8 {
	HEAD = 0,
	HAIR = 1,
	NECK = 2,
	CHEST = 3,
	GROIN = 4,
	SKIRT = 5,
	RIGHT_HAND = 6,
	LEFT_HAND = 7,
	RIGHT_WRIST = 8,
	LEFT_WRIST = 9,
	SHIELD = 10,
	RIGHT_FOREARM = 11,
	LEFT_FOREARM = 12,
	RIGHT_UPPER_ARM = 13,
	LEFT_UPPER_ARM = 14,
	RIGHT_FOOT = 15,
	LEFT_FOOT = 16,
	RIGHT_ANKLE = 17,
	LEFT_ANKLE = 18,
	RIGHT_KNEE = 19,
	LEFT_KNEE = 20,
	RIGHT_UPPER_LEG = 21,
	LEFT_UPPER_LEG = 22,
	RIGHT_PAULDRON = 23,
	LEFT_PAULDRON = 24,
	WEAPON = 25,
	TAIL = 26,
};

enum BodyPartType : u8 {
	BODYPART_TYPE_SKIN,
	BODYPART_TYPE_CLOTHING,
	BODYPART_TYPE_ARMOR,
};

enum EnchantType : s32 {
	ENCHANT_TYPE_CAST_ONCE,
	ENCHANT_TYPE_CAST_ON_STRIKE,
	ENCHANT_TYPE_CAST_WHEN_USED,
	ENCHANT_TYPE_CONSTANT_EFFECT,
};

enum ArmorSlot : s32 {
	ARMOR_SLOT_HELMET,
	ARMOR_SLOT_CUIRASS,
	ARMOR_SLOT_LEFT_PAULDRON,
	ARMOR_SLOT_RIGHT_PAULDRON,
	ARMOR_SLOT_GREAVES,
	ARMOR_SLOT_BOOTS,
	ARMOR_SLOT_LEFT_GAUNTLET,
	ARMOR_SLOT_RIGHT_GAUNTLET,
	ARMOR_SLOT_SHIELD,
	ARMOR_SLOT_LEFT_BRACER,
	ARMOR_SLOT_RIGHT_BRACER,
};

enum ClothingSlot : s32 {
	CLOTHING_SLOT_PANTS,
	CLOTHING_SLOT_SHOES,
	CLOTHING_SLOT_SHIRT,
	CLOTHING_SLOT_BELT,
	CLOTHING_SLOT_ROBE,
	CLOTHING_SLOT_RIGHT_GLOVE,
	CLOTHING_SLOT_LEFT_GLOVE,
	CLOTHING_SLOT_SKIRT,
	CLOTHING_SLOT_RING,
	CLOTHING_SLOT_AMULET,
};

enum Sex : s8 {
	SEX_ANY = -1,
	SEX_MALE,
	SEX_FEMALE,
};

enum DialogueType : s32 {
	DIAL_TYPE_TOPIC,
	DIAL_TYPE_VOICE,
	DIAL_TYPE_GREETING,
	DIAL_TYPE_PERSUASION,
	DIAL_TYPE_JOURNAL,
};

enum DialogueType2 : s8 {
	DIAL2_TYPE_TOPIC,
	DIAL2_TYPE_VOICE,
	DIAL2_TYPE_GREETING,
	DIAL2_TYPE_PERSUASION,
	DIAL2_TYPE_JOURNAL,
};

enum DialogueVarType : char {
	VAR_TYPE_NONE = '0',
	VAR_TYPE_FUNCTION = '1',
	VAR_TYPE_GLOBAL = '2',
	VAR_TYPE_LOCAL = '3',
	VAR_TYPE_JOURNAL = '4',
	VAR_TYPE_ITEM = '5',
	VAR_TYPE_DEAD = '6',
	VAR_TYPE_NOT_ID = '7',
	VAR_TYPE_NOT_FACTION = '8',
	VAR_TYPE_NOT_CLASS = '9',
	VAR_TYPE_NOT_RACE = 'A',
	VAR_TYPE_NOT_CELL = 'B',
	VAR_TYPE_NOT_LOCAL = 'C',
};

enum DialogueVarFunc : s16 {
	VAR_FUNC_REACTION_LOW = 12336,            // '00',
	VAR_FUNC_REACTION_HIGH = 12592,           // '01',
	VAR_FUNC_RANK_REQUIREMENT = 12848,        // '02',
	VAR_FUNC_REPUTATION = 13104,              // '03',
	VAR_FUNC_HEALTH_PERCENT = 13360,          // '04',
	VAR_FUNC_PC_REPUTATION = 13616,           // '05',
	VAR_FUNC_PC_LEVEL = 13872,                // '06',
	VAR_FUNC_PC_HEALTH_PERCENT = 14128,       // '07',
	VAR_FUNC_PC_MAGICKA = 14384,              // '08',
	VAR_FUNC_PC_FATIGUE = 14640,              // '09',
	VAR_FUNC_PC_STRENGTH = 12337,             // '10',
	VAR_FUNC_PC_BLOCK = 12593,                // '11',
	VAR_FUNC_PC_ARMORER = 12849,              // '12',
	VAR_FUNC_PC_MEDIUM_ARMOR = 13105,         // '13',
	VAR_FUNC_PC_HEAVY_ARMOR = 13361,          // '14',
	VAR_FUNC_PC_BLUNT_WEAPON = 13617,         // '15',
	VAR_FUNC_PC_LONG_BLADE = 13873,           // '16',
	VAR_FUNC_PC_AXE = 14129,                  // '17',
	VAR_FUNC_PC_SPEAR = 14385,                // '18',
	VAR_FUNC_PC_ATHLETICS = 14641,            // '19',
	VAR_FUNC_PC_ENCHANT = 12338,              // '20',
	VAR_FUNC_PC_DESTRUCTION = 12594,          // '21',
	VAR_FUNC_PC_ALTERATION = 12850,           // '22',
	VAR_FUNC_PC_ILLUSION = 13106,             // '23',
	VAR_FUNC_PC_CONJURATION = 13362,          // '24',
	VAR_FUNC_PC_MYSTICISM = 13618,            // '25',
	VAR_FUNC_PC_RESTORATION = 13874,          // '26',
	VAR_FUNC_PC_ALCHEMY = 14130,              // '27',
	VAR_FUNC_PC_UNARMORED = 14386,            // '28',
	VAR_FUNC_PC_SECURITY = 14642,             // '29',
	VAR_FUNC_PC_SNEAK = 12339,                // '30',
	VAR_FUNC_PC_ACROBATICS = 12595,           // '31',
	VAR_FUNC_PC_LIGHT_ARMOR = 12851,          // '32',
	VAR_FUNC_PC_SHORT_BLADE = 13107,          // '33',
	VAR_FUNC_PC_MARKSMAN = 13363,             // '34',
	VAR_FUNC_PC_MERCANTILE = 13619,           // '35',
	VAR_FUNC_PC_SPEECHCRAFT = 13875,          // '36',
	VAR_FUNC_PC_HAND_TO_HAND = 14131,         // '37',
	VAR_FUNC_PC_SEX = 14387,                  // '38',
	VAR_FUNC_PC_EXPELLED = 14643,             // '39',
	VAR_FUNC_PC_COMMON_DISEASE = 12340,       // '40',
	VAR_FUNC_PC_BLIGHT_DISEASE = 12596,       // '41',
	VAR_FUNC_PC_CLOTHING_MODIFIER = 12852,    // '42',
	VAR_FUNC_PC_CRIME_LEVEL = 13108,          // '43',
	VAR_FUNC_SAME_SEX = 13364,                // '44',
	VAR_FUNC_SAME_RACE = 13620,               // '45',
	VAR_FUNC_SAME_FACTION = 13876,            // '46',
	VAR_FUNC_FACTION_RANK_DIFFERENCE = 14132, // '47',
	VAR_FUNC_DETECTED = 14388,                // '48',
	VAR_FUNC_ALARMED = 14644,                 // '49',
	VAR_FUNC_CHOICE = 12341,                  // '50',
	VAR_FUNC_PC_INTELLIGENCE = 12597,         // '51',
	VAR_FUNC_PC_WILLPOWER = 12853,            // '52',
	VAR_FUNC_PC_AGILITY = 13109,              // '53',
	VAR_FUNC_PC_SPEED = 13365,                // '54',
	VAR_FUNC_PC_ENDURANCE = 13621,            // '55',
	VAR_FUNC_PC_PERSONALITY = 13877,          // '56',
	VAR_FUNC_PC_LUCK = 14133,                 // '57',
	VAR_FUNC_PC_CORPRUS = 14389,              // '58',
	VAR_FUNC_WEATHER = 14645,                 // '59',
	VAR_FUNC_PC_VAMPIRE = 12342,              // '60',
	VAR_FUNC_LEVEL = 12598,                   // '61',
	VAR_FUNC_ATTACKED = 12854,                // '62',
	VAR_FUNC_TALKED_TO_PC = 13110,            // '63',
	VAR_FUNC_PC_HEALTH = 13366,               // '64',
	VAR_FUNC_CREATURE_TARGET = 13622,         // '65',
	VAR_FUNC_FRIEND_HIT = 13878,              // '66',
	VAR_FUNC_FIGHT = 14134,                   // '67',
	VAR_FUNC_HELLO = 14390,                   // '68',
	VAR_FUNC_ALARM = 14646,                   // '69',
	VAR_FUNC_FLEE = 12343,                    // '70',
	VAR_FUNC_SHOULD_ATTACK = 12599,           // '71',
	VAR_FUNC_WEREWOLF = 12855,                // '72',
	VAR_FUNC_WEREWOLF_KILLS = 13111,          // '73',
	VAR_FUNC_NOT_CLASS = 22595,               // 'CX',
	VAR_FUNC_DEAD_TYPE = 22596,               // 'DX',
	VAR_FUNC_NOT_FACTION = 22598,             // 'FX',
	VAR_FUNC_ITEM_TYPE = 22601,               // 'IX',
	VAR_FUNC_JOURNAL_TYPE = 22602,            // 'JX',
	VAR_FUNC_NOT_CELL = 22604,                // 'LX',
	VAR_FUNC_NOT_RACE = 22610,                // 'RX',
	VAR_FUNC_NOT_ID_TYPE = 22616,             // 'XX',
	VAR_FUNC_GLOBAL = 22630,                  // 'fX',
	VAR_FUNC_PCGOLD = 22636,                  // 'lX',
	VAR_FUNC_COMPARE_GLOBAL = 22578,          // '2X',
	VAR_FUNC_COMPARE_LOCAL = 22579,           // '3X',
	VAR_FUNC_VARIABLE_COMPARE = 22643,        // 'sX',
};

enum DialogueVarComp : char {
	VAR_CMP_EQUAL = '0',
	VAR_CMP_NOT_EQUAL = '1',
	VAR_CMP_GREATER = '2',
	VAR_CMP_GREATER_EQUAL = '3',
	VAR_CMP_LESS = '4',
	VAR_CMP_LESS_EQUAL = '5',
};

enum SoundGenType : u32 {
	SNDG_LEFT_FOOT,
	SNDG_RIGHT_FOOT,
	SNDG_SWIM_LEFT,
	SNDG_SWIM_RIGHT,
	SNDG_MOAN,
	SNDG_ROAR,
	SNDG_SCREAM,
	SNDG_LAND,
};

enum FilterSlot : char {
	Slot0 = '0',
	Slot1 = '1',
	Slot2 = '2',
	Slot3 = '3',
	Slot4 = '4',
	Slot5 = '5',
	Slot6 = '6',
};
