-- EvenItOut
-- Author: Fampat, thanks and credits to the author of Smooth Difficulty
-- Changes starting units for AI
----------------------------------------------------------------------------

-- Difficulties: Settler, Chieftain, Warlord, Prince, King, Emperor, Immortal, Deity

-- Unmodified settlers unit count: 1, 1, 1, 1, 1, 2, 2, 3
-- Modified to: 1, 1, 1, 1, 1, 1, 2, 2
-- Beginning from difficulty emperor (instead od king) each 0.5 difficulty increasing steps that fills the 1.0, another settler-unit is generated
UPDATE
  MajorStartingUnits
SET
  MinDifficulty = "DIFFICULTY_IMMORTAL"
WHERE
  Unit = "UNIT_SETTLER"
AND
  AiOnly = 1;

-- Unmodified builders unit count: 0, 0, 0, 0, 1, 1, 2, 2
-- Modified to: 0, 0, 0, 0, 1, 1, 1, 2
-- Beginning from difficulty king each 0.35 difficulty increasing steps that fills the 1.0, another builder-unit is generated
UPDATE
  MajorStartingUnits
SET
  DifficultyDelta = "0.35"
WHERE
  Unit = "UNIT_BUILDER"
AND
  AiOnly = 1;

-- Unmodified military unit count: 1, 1, 1, 1, 2, 3, 4, 5
-- Modified to: 1, 1, 1, 1, 1, 2, 2, 3, 3, 4
-- Beginning from difficulty emperor (instead od king) each 0.5 difficulty increasing steps that fills the 1.0, another warrior-unit is generated
UPDATE
  MajorStartingUnits
SET
  MinDifficulty = "DIFFICULTY_KING",
  DifficultyDelta = "1"
WHERE
  AiOnly = 1
AND
  MinDifficulty = "DIFFICULTY_KING"
AND
  DifficultyDelta = 1
AND
  Unit != "UNIT_BUILDER"
AND
  Unit != "UNIT_SETTLER";
