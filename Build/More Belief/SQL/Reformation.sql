UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '200'
WHERE BuildingClass = 'BUILDINGCLASS_BARRACKS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '350'
WHERE BuildingClass = 'BUILDINGCLASS_ARMORY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '400'
WHERE BuildingClass = 'BUILDINGCLASS_MILITARY_ACADEMY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

INSERT INTO Belief_BuildingClassYieldChanges
	(BeliefType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_BARRACKS', 'YIELD_PRODUCTION', 1),
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_ARMORY', 'YIELD_PRODUCTION', 1),
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_MILITARY_ACADEMY', 'YIELD_PRODUCTION', 1);

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_BARRACKS'),
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_ARMORY'),
	('BELIEF_EVANGELISM', 'BUILDINGCLASS_MILITARY_ACADEMY');
--===============================================================
--Food for thought
--===============================================================

INSERT INTO Beliefs (Type, Description, ShortDescription, Reformation, Tooltip)
SELECT 'BELIEF_FOT', 'May build Aqueducts, Grocers, Hospitals, and Medical Labs with [ICON_PEACE] Faith. These buildings produce +2 [ICON_FOOD] Food and [ICON_PRODUCTION] Production. We Love the King Day boosts the [ICON_FOOD] Food output of a city by 10%.', 'Food for Thought', 1, 'May build Aqueducts, Grocers, Hospitals, and Medical Labs with [ICON_PEACE] Faith. These buildings produce +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production. We Love the King Day boosts the [ICON_FOOD] Food output of a city by 10%.' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

INSERT INTO Belief_YieldFromWLTKD (BeliefType, YieldType, Yield)
SELECT 'BELIEF_FOT', 'YIELD_FOOD', 10 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

UPDATE Buildings
SET UnlockedByBelief = 1, FaithCost = 200
WHERE BuildingClass = 'BUILDINGCLASS_AQUEDUCT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = 1, FaithCost = 350
WHERE BuildingClass = 'BUILDINGCLASS_GROCER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = 1, FaithCost = 400
WHERE BuildingClass = 'BUILDINGCLASS_HOSPITAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = 1, FaithCost = 550
WHERE BuildingClass = 'BUILDINGCLASS_MEDICAL_LAB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

INSERT INTO Belief_BuildingClassYieldChanges (BeliefType, BuildingClassType, YieldType, YieldChange)
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_AQUEDUCT', 'YIELD_FOOD', 2 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_GROCER', 'YIELD_FOOD', 2 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_HOSPITAL', 'YIELD_FOOD', 2 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_MEDICAL_LAB', 'YIELD_FOOD', 2 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_AQUEDUCT', 'YIELD_PRODUCTION', 1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_GROCER', 'YIELD_PRODUCTION', 1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_HOSPITAL', 'YIELD_PRODUCTION', 1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_MEDICAL_LAB', 'YIELD_PRODUCTION', 1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

INSERT INTO Belief_BuildingClassFaithPurchase (BeliefType, BuildingClassType)
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_AQUEDUCT' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_GROCER' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_HOSPITAL' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
SELECT 'BELIEF_FOT', 'BUILDINGCLASS_MEDICAL_LAB' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);
