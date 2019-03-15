--===========================================================================================================
-- Joy of people
--===========================================================================================================
INSERT INTO Beliefs
			(Type,					Description,									ShortDescription,	Enhancer,		RiverHappiness,				Tooltip)
	VALUES	('BELIEF_JOY_PEOPLE',  'Let''s joy!',	'Joy of People',					1,					1,		'May build Circus, Zoos and Stadiums with [ICON_PEACE] Faith. These buildings produce +2 [ICON_GOLDEN_AGE] Golden Age Points each. Holy City owner gains +1 [ICON_HAPPINESS_1] Cities built on river following this religion.')


UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '200'
WHERE BuildingClass = 'BUILDINGCLASS_CIRCUS'

UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '350'
WHERE BuildingClass = 'BUILDINGCLASS_THEATRE'

INSERT INTO Belief_BuildingClassYieldChanges
	(BeliefType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_CIRCUS', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_THEATRE', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_STADIUM', 'YIELD_GOLDEN_AGE_POINTS', 2);

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_CIRCUS'),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_THEATRE'),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_STADIUM');
