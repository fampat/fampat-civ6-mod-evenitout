-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds per era additional combat-bonus to the AIs vs barbarians
-- ATTENTION: Requirements are in Requirements.sql
----------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
("TRAIT_LEADER_MAJOR_CIV", "KING_AI_VS_BARB"),
("TRAIT_LEADER_MAJOR_CIV", "EMPEROR_AI_VS_BARB"),
("TRAIT_LEADER_MAJOR_CIV", "IMMORTAL_AI_VS_BARB"),
("TRAIT_LEADER_MAJOR_CIV", "DEITY_AI_VS_BARB");

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, Permanent) VALUES
('KING_AI_VS_BARB', 'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT', 'AI_KING_DIFFICULTY', 1),
('EMPEROR_AI_VS_BARB', 'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT', 'AI_EMPEROR_DIFFICULTY', 1),
('IMMORTAL_AI_VS_BARB', 'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT', 'AI_IMMORTAL_DIFFICULTY', 1),
('DEITY_AI_VS_BARB', 'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT', 'AI_DEITY_DIFFICULTY', 1);

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('KING_AI_VS_BARB', 'Amount', '1'),
('EMPEROR_AI_VS_BARB', 'Amount', '1'),
('IMMORTAL_AI_VS_BARB', 'Amount', '2'),
('DEITY_AI_VS_BARB', 'Amount', '2');
