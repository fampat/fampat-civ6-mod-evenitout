-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Undos the changes added by FortifAI, this realy would be too much :D
----------------------------------------------------------------------------

-- Undo free walls for AI
DELETE FROM Types WHERE Type = "FAIW_CIV_GRANT_WALLS_IN_CITY";
DELETE FROM DynamicModifiers WHERE ModifierType = "FAIW_CIV_GRANT_WALLS_IN_CITY";
DELETE FROM Modifiers WHERE ModifierType = "FAIW_CIV_GRANT_WALLS_IN_CITY";
DELETE FROM ModifierArguments WHERE ModifierId LIKE "FAIW_%";
DELETE FROM TraitModifiers WHERE ModifierId LIKE "FAIW_%";
DELETE FROM RequirementSets WHERE RequirementSetId LIKE "FAIW_%";
DELETE FROM RequirementSetRequirements WHERE RequirementSetId LIKE "FAIW_%";
DELETE FROM Requirements WHERE RequirementId LIKE "FAIW_%";
DELETE FROM RequirementArguments WHERE RequirementId LIKE "FAIW_%";

-- Undo grievance decay changes
UPDATE Eras_XP2 SET GrievanceDecayRate = 10 WHERE EraType = 'ERA_ANCIENT';
UPDATE Eras_XP2 SET GrievanceDecayRate = 9 WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras_XP2 SET GrievanceDecayRate = 8 WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras_XP2 SET GrievanceDecayRate = 7 WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras_XP2 SET GrievanceDecayRate = 6 WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Eras_XP2 SET GrievanceDecayRate = 5 WHERE EraType = 'ERA_MODERN';
UPDATE Eras_XP2 SET GrievanceDecayRate = 4 WHERE EraType = 'ERA_ATOMIC';
UPDATE Eras_XP2 SET GrievanceDecayRate = 3 WHERE EraType = 'ERA_INFORMATION';

-- Undo startegic resouce changes
DELETE FROM Types WHERE Type LIKE "FAIW_%";
DELETE FROM GovernorPromotionModifiers WHERE ModifierId LIKE "FAIW_%";
DELETE FROM DynamicModifiers WHERE ModifierType LIKE "FAIW_%";
DELETE FROM Modifiers WHERE ModifierId LIKE "FAIW_%";
DELETE FROM TraitModifiers WHERE ModifierId LIKE "FAIW_%";
DELETE FROM RequirementSets WHERE RequirementSetId LIKE "FAIW_%";
DELETE FROM RequirementSetRequirements WHERE RequirementSetId LIKE "FAIW_%";
