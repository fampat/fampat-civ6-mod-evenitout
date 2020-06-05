-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty and schwarzpol
-- Adds per-era and flat additional bonus to the tourism
--------------------------------------------------------------------------------

-- FLAT TOURISM BONUS
---------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'HIGH_DIFFICULTY_TOURISM_SCALING');

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, Permanent) VALUES
('HIGH_DIFFICULTY_TOURISM_SCALING', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'PLAYER_IS_HIGH_DIFFICULTY_AI', 1);

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('HIGH_DIFFICULTY_TOURISM_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 5);


-- SCALING TOURISM BONUS
--------------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_CLASSICAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_MEDIEVAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_RENAISSANCE'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_INDUSTRIAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_MODERN'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_ATOMIC'),
('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_INFO');

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, Permanent) VALUES
('TOURISM_SCALING_CLASSICAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_CLASSICAL', 1),
('TOURISM_SCALING_MEDIEVAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_MEDIEVAL', 1),
('TOURISM_SCALING_RENAISSANCE', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_RENAISSANCE', 1),
('TOURISM_SCALING_INDUSTRIAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_INDUSTRIAL', 1),
('TOURISM_SCALING_MODERN', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_MODERN', 1),
('TOURISM_SCALING_ATOMIC', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_ATOMIC', 1),
('TOURISM_SCALING_INFO', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'TOURISM_HIGH_DIFFICULTY_AI_INFO', 1);

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('TOURISM_SCALING_CLASSICAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_MEDIEVAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_RENAISSANCE', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_INDUSTRIAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_MODERN', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_ATOMIC', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2),
('TOURISM_SCALING_INFO', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2);

-- Requirement-sets that must met
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('TOURISM_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_MODERN', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIREMENTSET_TEST_ALL'),
('TOURISM_HIGH_DIFFICULTY_AI_INFO', 'REQUIREMENTSET_TEST_ALL');

-- Requirements that must met the requirement-set
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('TOURISM_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_CLASSICAL', 'PLAYER_AT_CLASSICAL_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_MEDIEVAL', 'PLAYER_AT_MEDIEVAL_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_RENAISSANCE', 'PLAYER_AT_RENAISSANCE_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'PLAYER_AT_INDUSTRIAL_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_MODERN', 'PLAYER_AT_MODERN_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_ATOMIC', 'PLAYER_AT_ATOMIC_ERA'),
('TOURISM_HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_PLAYER_IS_AI'),
('TOURISM_HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_HIGH_DIFFICULTY'),
('TOURISM_HIGH_DIFFICULTY_AI_INFO', 'PLAYER_AT_INFO_ERA');