--===========================================================================================================
--BUILDING
--===========================================================================================================
-- Lupanar
--===========================================================================================================
INSERT INTO Buildings
			(Type,				BuildingClass,			  Description, Civilopedia,			Strategy,	Help,																																																																															ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
	SELECT	'BUILDING_LUPANAR', 'BUILDINGCLASS_LUPANAR',  'Lupanar', 'Civilopedia_Lupanar','Lup_Strat','Reduces slightly Distress and Boredom. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.', 0,					25,							-10,				-1,		1,					 200,		-5,								-5,						1,			'TEMPLE',		-1,				'DF_BELIEF_ATLAS',	0
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);
	
INSERT INTO BuildingClasses 
			(Type,						DefaultBuilding,  Description)
	SELECT	'BUILDINGCLASS_LUPANAR',	'BUILDING_LUPANAR',	 'Lupanar'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);
INSERT INTO Beliefs
			(Type,				Description,									ShortDescription,	Follower,	Tooltip)
	SELECT	'BELIEF_LUPANAR',  'Use [ICON_PEACE] Faith to purchase Lupanar',	'Lupanar',			1,			'+2 [ICON_PEACE] Faith[NEWLINE]+1 [ICON_FOOD] Food [NEWLINE]+1 [ICON_CULTURE] Culture[NEWLINE]+1 [ICON_HAPPINESS_1] Happiness[NEWLINE][NEWLINE]Reduces slightly Distress and Boredom. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);
INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,			 BuildingClassType)
	SELECT  'BELIEF_LUPANAR', 'BUILDINGCLASS_LUPANAR'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);
INSERT INTO Building_YieldChanges
			(BuildingType,			YieldType,		Yield)
	SELECT	'BUILDING_LUPANAR',	'YIELD_FAITH',	2 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
			'BUILDING_LUPANAR',	'YIELD_FOOD',	1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL		
			'BUILDING_LUPANAR',	'YIELD_CULTURE',1 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

INSERT INTO Building_YieldFromBirth
			(BuildingType,			YieldType,		Yield)
	SELECT	'BUILDING_LUPANAR',	'YIELD_FAITH',	10 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1) UNION ALL
			'BUILDING_LUPANAR',	'YIELD_FOOD',	10 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

INSERT INTO Building_GoldenAgeYieldMod
			(BuildingType,			YieldType,		Yield)
	SELECT	'BUILDING_LUPANAR',	'YIELD_FOOD',	10 WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1);

--===========================================================================================================
-- Jinja
--===========================================================================================================
INSERT INTO Buildings
			(Type,				BuildingClass,			Description, Civilopedia,			Strategy,		Help,																																																																			ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,						IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_JINJA', 'BUILDINGCLASS_JINJA',  'Jinja',		'Civilopedia_Jinja',	'Jinja_Strat',	'Reduces Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Forts and Citadels near the city gain +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.'	,	0,			25,							-10,				-1,		1,					 200,		0,								-10,						0,			'TEMPLE',		-1,				'JFD_PIETY_BELIEF_ATLAS',	3)

	
INSERT INTO BuildingClasses 
			(Type,					DefaultBuilding,	Description)
	VALUES	('BUILDINGCLASS_JINJA',	'BUILDING_JINJA',	'Jinja')
	
INSERT INTO Beliefs
			(Type,				Description,								ShortDescription,	Follower,	Tooltip)
	VALUES	('BELIEF_JINJA',	'Use [ICON_PEACE] Faith to purchase Jinja',	'Jinja',			1,			'+3 [ICON_PEACE] Faith[NEWLINE]+1 [ICON_GREAT_GENERAL] Great General point [NEWLINE]Reduces Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Fort and Citadel near the city gain +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.')

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,	 BuildingClassType)
	VALUES  ('BELIEF_JINJA', 'BUILDINGCLASS_JINJA')

INSERT INTO Building_YieldChanges
			(BuildingType,		YieldType,		Yield)
	VALUES	('BUILDING_JINJA',	'YIELD_FAITH',	3),
			('BUILDING_JINJA',	'YIELD_GREAT_GENERAL_POINTS',	1);

INSERT INTO Building_ImprovementYieldChanges
			(BuildingType,		ImprovementType,	 YieldType,		Yield)
	VALUES	('BUILDING_JINJA',	IMPROVEMENT_FORT,	 'YIELD_FOOD',	2),
			('BUILDING_JINJA',	IMPROVEMENT_CITADEL, 'YIELD_FOOD',	2),
			('BUILDING_JINJA',	IMPROVEMENT_FORT,	 'YIELD_PRODUCTION',	1),
			('BUILDING_JINJA',	IMPROVEMENT_CITADEL, 'YIELD_PRODUCTION',	1);

--===========================================================================================================
-- War cult
--===========================================================================================================
INSERT INTO Beliefs
			(Type,				Description,									ShortDescription,	Follower, UnitProductionModifier,				Tooltip)
	VALUES	('BELIEF_WAR_CULT',  'Use [ICON_PEACE] Faith to purchase War Cult',	'War Cult',					1,					10,		'+3 [ICON_PEACE] Faith[NEWLINE]+2 [ICON_PRODUCTION] Production[NEWLINE]Gain [ICON_CULTURE] Culture and [ICON_PEACE] Faith when training military units.[NEWLINE]-10% unit production cost')

INSERT INTO Buildings
			(Type,				BuildingClass,					Description,			 Civilopedia,			Strategy,		Help,																																																																							ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,						IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_WAR_CULT', 'BUILDINGCLASS_WAR_CULT',  'War Cult',		'Civilopedia_WAR_CULT',	'WAR_CULT_Strat',	'Reduces Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Gain [ICON_CULTURE] Culture and [ICON_PEACE] Faith when training military units[NEWLINE]-10% units cost production'	,	0,			25,							-10,				-1,		1,					 200,		0,								-10,						0,			'TEMPLE',		-1,				'JFD_PIETY_BELIEF_ATLAS',	8)

	
INSERT INTO BuildingClasses 
			(Type,					DefaultBuilding,	Description)
	VALUES	('BUILDINGCLASS_WAR_CULT',	'BUILDING_WAR_CULT',	'War Cult')

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,	 BuildingClassType)
	VALUES  ('BELIEF_WAR_CULT', 'BUILDINGCLASS_WAR_CULT')

INSERT INTO Building_YieldChanges
			(BuildingType,		YieldType,		Yield)
	VALUES	('BUILDING_WAR_CULT',	'YIELD_FAITH',	3),
			('BUILDING_WAR_CULT',	'YIELD_PRODUCTION',	2);

INSERT INTO Building_YieldFromUnitProduction
			(BuildingType,		YieldType,		Yield)
VALUES		('BUILDING_WAR_CULT','YIELD_FAITH', 5),
			('BUILDING_WAR_CULT','YIELD_CULTURE', 5);  

--===========================================================================================================
-- God of Luxury
--===========================================================================================================

INSERT INTO Beliefs
			(Type,				Description,																															ShortDescription,	Follower, UnitProductionModifier,				Tooltip)
	VALUES	('BELIEF_GODOPULENCE',  '+2 [ICON_PEACE] Faith, +2 [ICON_GOLD] Gold, +2 [ICON_CULTURE] Culture, +2 [ICON_RESEARCH] Science per luxury ressources owned',	'God of opulence',					1,					10,		'+2 [ICON_PEACE] Faith[NEWLINE]+2 [ICON_GOLD] Gold[NEWLINE]+2 [ICON_CULTURE] Culture[NEWLINE]+2 [ICON_RESEARCH] Science[NEWLINE]for each unique luxury ressource owned(Imported and Exported)')

INSERT INTO Belief_YieldPerLux
			(BeliefType,			YieldType, Yield)
VALUES		('BELIEF_GODOPULENCE', 'YIELD_FAITH', 2),
			('BELIEF_GODOPULENCE', 'YIELD_GOLD', 2),
			('BELIEF_GODOPULENCE', 'YIELD_CULTURE', 2),
			('BELIEF_GODOPULENCE', 'YIELD_SCIENCE', 2);


