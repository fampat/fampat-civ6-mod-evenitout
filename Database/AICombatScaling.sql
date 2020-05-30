-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds per era additional combat-bonus to the AIs
-- ATTENTION: Requirements are in Requirements.sql
----------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
("TRAIT_LEADER_MAJOR_CIV", "KING_ERA_1"),
("TRAIT_LEADER_MAJOR_CIV", "KING_ERA_2"),
("TRAIT_LEADER_MAJOR_CIV", "KING_ERA_3"),
("TRAIT_LEADER_MAJOR_CIV", "EMPEROR_ERA_1"),
("TRAIT_LEADER_MAJOR_CIV", "EMPEROR_ERA_2"),
("TRAIT_LEADER_MAJOR_CIV", "EMPEROR_ERA_3"),
("TRAIT_LEADER_MAJOR_CIV", "IMMORTAL_ERA_1"),
("TRAIT_LEADER_MAJOR_CIV", "IMMORTAL_ERA_2"),
("TRAIT_LEADER_MAJOR_CIV", "IMMORTAL_ERA_3"),
("TRAIT_LEADER_MAJOR_CIV", "DEITY_ERA_1"),
("TRAIT_LEADER_MAJOR_CIV", "DEITY_ERA_2"),
("TRAIT_LEADER_MAJOR_CIV", "DEITY_ERA_3");

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('KING_ERA_1', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'MEDIEVAL_RENAISSANCE_AND_KING'),
('KING_ERA_2', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'INDUSTRIAL_MODERN_AND_KING'),
('KING_ERA_3', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'ATOMIC_AND_KING'),
('EMPEROR_ERA_1', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'MEDIEVAL_RENAISSANCE_AND_EMPEROR'),
('EMPEROR_ERA_2', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'INDUSTRIAL_MODERN_AND_EMPEROR'),
('EMPEROR_ERA_3', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'ATOMIC_AND_EMPEROR'),
('IMMORTAL_ERA_1', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'MEDIEVAL_RENAISSANCE_AND_IMMORTAL'),
('IMMORTAL_ERA_2', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'INDUSTRIAL_MODERN_AND_IMMORTAL'),
('IMMORTAL_ERA_3', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'ATOMIC_AND_IMMORTAL'),
('DEITY_ERA_1', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'MEDIEVAL_RENAISSANCE_AND_DEITY'),
('DEITY_ERA_2', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'INDUSTRIAL_MODERN_AND_DEITY'),
('DEITY_ERA_3', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_DIFFICULTY', 'ATOMIC_AND_DEITY');

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('KING_ERA_1', 'Amount', 'LinearScaleFromDefaultHandicap', '1', '0'),
('KING_ERA_2', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('KING_ERA_3', 'Amount', 'LinearScaleFromDefaultHandicap', '4', '0'),
('EMPEROR_ERA_1', 'Amount', 'LinearScaleFromDefaultHandicap', '1', '0'),
('EMPEROR_ERA_2', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('EMPEROR_ERA_3', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('IMMORTAL_ERA_1', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('IMMORTAL_ERA_2', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('IMMORTAL_ERA_3', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('DEITY_ERA_1', 'Amount', 'LinearScaleFromDefaultHandicap', '2', '0'),
('DEITY_ERA_2', 'Amount', 'LinearScaleFromDefaultHandicap', '3', '0'),
('DEITY_ERA_3', 'Amount', 'LinearScaleFromDefaultHandicap', '4', '0');

-- String for localization-texts
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
('KING_ERA_1', 'Preview', 'LOC_KING_ERA_1'),
('KING_ERA_2', 'Preview', 'LOC_KING_ERA_2'),
('KING_ERA_3', 'Preview', 'LOC_KING_ERA_3'),
('EMPEROR_ERA_1', 'Preview', 'LOC_EMPEROR_ERA_1'),
('EMPEROR_ERA_2', 'Preview', 'LOC_EMPEROR_ERA_2'),
('EMPEROR_ERA_3', 'Preview', 'LOC_EMPEROR_ERA_3'),
('IMMORTAL_ERA_1', 'Preview', 'LOC_IMMORTAL_ERA_1'),
('IMMORTAL_ERA_2', 'Preview', 'LOC_IMMORTAL_ERA_2'),
('IMMORTAL_ERA_3', 'Preview', 'LOC_IMMORTAL_ERA_3'),
('DEITY_ERA_1', 'Preview', 'LOC_DEITY_ERA_1'),
('DEITY_ERA_2', 'Preview', 'LOC_DEITY_ERA_2'),
('DEITY_ERA_3', 'Preview', 'LOC_DEITY_ERA_3');

-- Requirement-sets that must met
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('MEDIEVAL_RENAISSANCE_AND_KING', 'REQUIREMENTSET_TEST_ALL'),
('INDUSTRIAL_MODERN_AND_KING', 'REQUIREMENTSET_TEST_ALL'),
('ATOMIC_AND_KING', 'REQUIREMENTSET_TEST_ALL'),
('MEDIEVAL_RENAISSANCE_AND_EMPEROR', 'REQUIREMENTSET_TEST_ALL'),
('INDUSTRIAL_MODERN_AND_EMPEROR', 'REQUIREMENTSET_TEST_ALL'),
('ATOMIC_AND_EMPEROR', 'REQUIREMENTSET_TEST_ALL'),
('MEDIEVAL_RENAISSANCE_AND_IMMORTAL', 'REQUIREMENTSET_TEST_ALL'),
('INDUSTRIAL_MODERN_AND_IMMORTAL', 'REQUIREMENTSET_TEST_ALL'),
('ATOMIC_AND_IMMORTAL', 'REQUIREMENTSET_TEST_ALL'),
('MEDIEVAL_RENAISSANCE_AND_DEITY', 'REQUIREMENTSET_TEST_ALL'),
('INDUSTRIAL_MODERN_AND_DEITY', 'REQUIREMENTSET_TEST_ALL'),
('ATOMIC_AND_DEITY', 'REQUIREMENTSET_TEST_ALL');

-- Requirements that must met the requirement-set
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
-- King eras
('MEDIEVAL_RENAISSANCE_AND_KING', 'REQUIRES_PLAYER_IS_AI'),
('MEDIEVAL_RENAISSANCE_AND_KING', 'PLAYER_AT_MEDIEVAL_ERA'),
('MEDIEVAL_RENAISSANCE_AND_KING', 'REQUIRES_KING'),
('INDUSTRIAL_MODERN_AND_KING', 'REQUIRES_PLAYER_IS_AI'),
('INDUSTRIAL_MODERN_AND_KING', 'PLAYER_AT_INDUSTRIAL_ERA'),
('INDUSTRIAL_MODERN_AND_KING', 'REQUIRES_KING'),
('ATOMIC_AND_KING', 'REQUIRES_PLAYER_IS_AI'),
('ATOMIC_AND_KING', 'PLAYER_AT_ATOMIC_ERA'),
('ATOMIC_AND_KING', 'REQUIRES_KING'),
-- Emperor eras
('MEDIEVAL_RENAISSANCE_AND_EMPEROR', 'REQUIRES_PLAYER_IS_AI'),
('MEDIEVAL_RENAISSANCE_AND_EMPEROR', 'PLAYER_AT_MEDIEVAL_ERA'),
('MEDIEVAL_RENAISSANCE_AND_EMPEROR', 'REQUIRES_EMPEROR'),
('INDUSTRIAL_MODERN_AND_EMPEROR', 'REQUIRES_PLAYER_IS_AI'),
('INDUSTRIAL_MODERN_AND_EMPEROR', 'PLAYER_AT_INDUSTRIAL_ERA'),
('INDUSTRIAL_MODERN_AND_EMPEROR', 'REQUIRES_EMPEROR'),
('ATOMIC_AND_EMPEROR', 'REQUIRES_PLAYER_IS_AI'),
('ATOMIC_AND_EMPEROR', 'PLAYER_AT_ATOMIC_ERA'),
('ATOMIC_AND_EMPEROR', 'REQUIRES_EMPEROR'),
-- Immortal eras
('MEDIEVAL_RENAISSANCE_AND_IMMORTAL', 'REQUIRES_PLAYER_IS_AI'),
('MEDIEVAL_RENAISSANCE_AND_IMMORTAL', 'PLAYER_AT_MEDIEVAL_ERA'),
('MEDIEVAL_RENAISSANCE_AND_IMMORTAL', 'REQUIRES_IMMORTAL'),
('INDUSTRIAL_MODERN_AND_IMMORTAL', 'REQUIRES_PLAYER_IS_AI'),
('INDUSTRIAL_MODERN_AND_IMMORTAL', 'PLAYER_AT_INDUSTRIAL_ERA'),
('INDUSTRIAL_MODERN_AND_IMMORTAL', 'REQUIRES_IMMORTAL'),
('ATOMIC_AND_IMMORTAL', 'REQUIRES_PLAYER_IS_AI'),
('ATOMIC_AND_IMMORTAL', 'PLAYER_AT_ATOMIC_ERA'),
('ATOMIC_AND_IMMORTAL', 'REQUIRES_IMMORTAL'),
-- Deity eras
('MEDIEVAL_RENAISSANCE_AND_DEITY', 'REQUIRES_PLAYER_IS_AI'),
('MEDIEVAL_RENAISSANCE_AND_DEITY', 'PLAYER_AT_MEDIEVAL_ERA'),
('MEDIEVAL_RENAISSANCE_AND_DEITY', 'REQUIRES_DEITY'),
('INDUSTRIAL_MODERN_AND_DEITY', 'REQUIRES_PLAYER_IS_AI'),
('INDUSTRIAL_MODERN_AND_DEITY', 'PLAYER_AT_INDUSTRIAL_ERA'),
('INDUSTRIAL_MODERN_AND_DEITY', 'REQUIRES_DEITY'),
('ATOMIC_AND_DEITY', 'REQUIRES_PLAYER_IS_AI'),
('ATOMIC_AND_DEITY', 'PLAYER_AT_ATOMIC_ERA'),
('ATOMIC_AND_DEITY', 'REQUIRES_DEITY');