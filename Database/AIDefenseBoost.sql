-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Adds AI (also city-states) production boost when building defense-buildings
--------------------------------------------------------------------------------

-- Civilization-types affected
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_KING'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_EMPEROR'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_IMMORTAL'),
('TRAIT_LEADER_MAJOR_CIV', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_DEITY'),
('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_KING'),
('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_EMPEROR'),
('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_IMMORTAL'),
('MINOR_CIV_DEFAULT_TRAIT', 'TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_DEITY');

-- Modifier for effect
INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_KING', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION', 'AI_KING_DIFFICULTY'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_EMPEROR', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION', 'AI_EMPEROR_DIFFICULTY'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_IMMORTAL', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION', 'AI_IMMORTAL_DIFFICULTY'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_DEITY', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION', 'AI_DEITY_DIFFICULTY');

-- Arguments for the modifier-effect
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_KING', 'BuildingType', 'BUILDING_WALLS,BUILDING_CASTLE,BUILDING_STAR_FORT'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_KING', 'Amount', 15),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_EMPEROR', 'BuildingType', 'BUILDING_WALLS,BUILDING_CASTLE,BUILDING_STAR_FORT'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_EMPEROR', 'Amount', 15),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_IMMORTAL', 'BuildingType', 'BUILDING_WALLS,BUILDING_CASTLE,BUILDING_STAR_FORT'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_IMMORTAL', 'Amount', 15),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_DEITY', 'BuildingType', 'BUILDING_WALLS,BUILDING_CASTLE,BUILDING_STAR_FORT'),
('TRAIT_ACCELARATE_AI_WALLS_PRODUCTION_DEITY', 'Amount', 15);