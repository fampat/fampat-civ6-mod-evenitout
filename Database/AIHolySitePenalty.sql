-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds AI production penalty when building the holy-site
----------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_DEITY');

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 'AI_KING_DIFFICULTY'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 'AI_EMPEROR_DIFFICULTY'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 'AI_IMMORTAL_DIFFICULTY'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', 'AI_DEITY_DIFFICULTY');

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_KING', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_KING', 'Amount', -15),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_EMPEROR', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_EMPEROR', 'Amount', -15),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_IMMORTAL', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_IMMORTAL', 'Amount', -15),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_DEITY', 'DistrictType', 'DISTRICT_HOLY_SITE'),
('TRAIT_DECELERATE_AI_HOLYSITE_PRODUCTION_DEITY', 'Amount', -15);