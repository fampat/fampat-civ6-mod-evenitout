-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds shared difficulty-setting requirements for this mod
----------------------------------------------------------------------------

-- Difficulty requirements
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_KING', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_EMPEROR', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_NOT_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1),
('REQUIRES_NOT_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1),
('REQUIRES_NOT_EMPEROR', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1);

-- Difficulty requirement argumenmts
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_KING', 'Handicap', 'DIFFICULTY_KING'),
('REQUIRES_EMPEROR', 'Handicap', 'DIFFICULTY_EMPEROR'),
('REQUIRES_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL'),
('REQUIRES_DEITY', 'Handicap', 'DIFFICULTY_DEITY'),
('REQUIRES_NOT_DEITY', 'Handicap', 'DIFFICULTY_DEITY'),
('REQUIRES_NOT_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL'),
('REQUIRES_NOT_EMPEROR', 'Handicap', 'DIFFICULTY_EMPEROR');

-- Eras
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('PLAYER_AT_CLASSICAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_MEDIEVAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_RENAISSANCE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_MODERN_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_INFO_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);

-- Era arguments
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('PLAYER_AT_CLASSICAL_ERA', 'EraType', 'ERA_CLASSICAL'),
('PLAYER_AT_MEDIEVAL_ERA', 'EraType', 'ERA_MEDIEVAL'),
('PLAYER_AT_RENAISSANCE_ERA', 'EraType', 'ERA_RENAISSANCE'),
('PLAYER_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('NOT_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('PLAYER_AT_MODERN_ERA', 'EraType', 'ERA_MODERN'),
('PLAYER_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('NOT_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('PLAYER_AT_INFO_ERA', 'EraType', 'ERA_INFORMATION');

-- Difficulty requirement-sets
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('AI_KING_DIFFICULTY', 'REQUIREMENTSET_TEST_ALL'),
('AI_KING_DIFFICULTY_ONLY', 'REQUIREMENTSET_TEST_ALL'),
('AI_EMPEROR_DIFFICULTY', 'REQUIREMENTSET_TEST_ALL'),
('AI_EMPEROR_DIFFICULTY_ONLY', 'REQUIREMENTSET_TEST_ALL'),
('AI_IMMORTAL_DIFFICULTY', 'REQUIREMENTSET_TEST_ALL'),
('AI_IMMORTAL_DIFFICULTY_ONLY', 'REQUIREMENTSET_TEST_ALL'),
('AI_DEITY_DIFFICULTY', 'REQUIREMENTSET_TEST_ALL');
('AI_DEITY_DIFFICULTY_ONLY', 'REQUIREMENTSET_TEST_ALL');

-- Difficulty-set requirements
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
-- King
('AI_KING_DIFFICULTY', 'REQUIRES_KING'),
('AI_KING_DIFFICULTY', 'REQUIRES_PLAYER_IS_AI'),
('AI_EMPEROR_DIFFICULTY', 'REQUIRES_EMPEROR'),
('AI_EMPEROR_DIFFICULTY', 'REQUIRES_PLAYER_IS_AI'),
('AI_IMMORTAL_DIFFICULTY', 'REQUIRES_IMMORTAL'),
('AI_IMMORTAL_DIFFICULTY', 'REQUIRES_PLAYER_IS_AI'),
('AI_DEITY_DIFFICULTY', 'REQUIRES_DEITY'),
('AI_DEITY_DIFFICULTY', 'REQUIRES_PLAYER_IS_AI');
