-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds per era additional bonus to the production
----------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_CLASSICAL'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_MEDIEVAL'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_RENAISSANCE'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_INDUSTRIAL'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_MODERN'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_ATOMIC'),
('TRAIT_LEADER_MAJOR_CIV', 'PRODUCTION_SCALING_INFO');

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('PRODUCTION_SCALING_CLASSICAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_CLASSICAL'),
('PRODUCTION_SCALING_MEDIEVAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_MEDIEVAL'),
('PRODUCTION_SCALING_RENAISSANCE', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_RENAISSANCE'),
('PRODUCTION_SCALING_INDUSTRIAL', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_INDUSTRIAL'),
('PRODUCTION_SCALING_MODERN', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_MODERN'),
('PRODUCTION_SCALING_ATOMIC', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_ATOMIC'),
('PRODUCTION_SCALING_INFO', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 'PRODUCTION_HIGH_DIFFICULTY_AI_INFO');

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('PRODUCTION_SCALING_CLASSICAL', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_MEDIEVAL', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_RENAISSANCE', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_INDUSTRIAL', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_MODERN', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_ATOMIC', 'YieldType', 'YIELD_PRODUCTION'),
('PRODUCTION_SCALING_INFO', 'YieldType', 'YIELD_PRODUCTION');

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('PRODUCTION_SCALING_CLASSICAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_MEDIEVAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_RENAISSANCE', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_INDUSTRIAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_MODERN', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_ATOMIC', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
('PRODUCTION_SCALING_INFO', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1);

-- Requirement-sets that must met
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('PRODUCTION_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MODERN', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIREMENTSET_TEST_ALL'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INFO', 'REQUIREMENTSET_TEST_ALL');

-- Requirements that must met the requirement-set
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('PRODUCTION_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_CLASSICAL', 'PLAYER_AT_CLASSICAL_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MEDIEVAL', 'PLAYER_AT_MEDIEVAL_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_RENAISSANCE', 'PLAYER_AT_RENAISSANCE_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INDUSTRIAL', 'PLAYER_AT_INDUSTRIAL_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_MODERN', 'PLAYER_AT_MODERN_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_INFO', 'PLAYER_AT_INFO_ERA'),
('PRODUCTION_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_PLAYER_IS_AI'),
('PRODUCTION_HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_HIGH_DIFFICULTY'),
('PRODUCTION_HIGH_DIFFICULTY_AI_ATOMIC', 'PLAYER_AT_ATOMIC_ERA');
