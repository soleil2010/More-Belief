--===========================================================================================================
--BUILDING
--===========================================================================================================
-- Lupanar
--===========================================================================================================
INSERT INTO Buildings
			(Type,				BuildingClass,			  Description, Civilopedia,			Strategy,	Help,																																																																															ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_LUPANAR', 'BUILDINGCLASS_LUPANAR',  'Lupanar', 'Civilopedia_Lupanar','Lup_Strat','Reduces slightly Distress and Boredom. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.', 100,			25,							-10,				-1,		1,					 200,		-5,								-5,						1,			'TEMPLE',		-1,				'DF_BELIEF_ATLAS',	0)

	
INSERT INTO BuildingClasses 
			(Type,						DefaultBuilding,  Description)
	VALUES	('BUILDINGCLASS_LUPANAR',	'BUILDING_LUPANAR',	 'Lupanar')
	
INSERT INTO Beliefs
			(Type,				Description,									ShortDescription,	Follower,	Tooltip)
	VALUES	('BELIEF_LUPANAR',  'Use [ICON_PEACE] Faith to purchase Lupanar',	'Lupanar',			1,			'+2 [ICON_PEACE] Faith[NEWLINE]+1 [ICON_FOOD] Food [NEWLINE]+1 [ICON_CULTURE] Culture[NEWLINE]+1 [ICON_HAPPINESS_1] Happiness[NEWLINE][NEWLINE]Reduces slightly Distress and Boredom. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.')

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,			 BuildingClassType)
	VALUES  ('BELIEF_LUPANAR', 'BUILDINGCLASS_LUPANAR')

INSERT INTO Building_YieldChanges
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FAITH',	2),
			('BUILDING_LUPANAR',	'YIELD_FOOD',	1),		
			('BUILDING_LUPANAR',	'YIELD_CULTURE',1);

INSERT INTO Building_YieldFromBirth
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FAITH',	10),
			('BUILDING_LUPANAR',	'YIELD_FOOD',	25);

INSERT INTO Building_GoldenAgeYieldMod
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FOOD',	10)
--===========================================================================================================
-- Jinja
--===========================================================================================================
INSERT INTO Buildings
			(Type,				BuildingClass,			Description, Civilopedia,			Strategy,		Help,		ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_JINJA', 'BUILDINGCLASS_JINJA',  'Jinja',		'Civilopedia_Jinja',	'Jinja_Strat',	'help'	,	100,			25,							-10,				-1,		1,					 200,		0,								-10,						0,			'TEMPLE',		-1,				'DF_BELIEF_ATLAS',	0)

	
INSERT INTO BuildingClasses 
			(Type,					DefaultBuilding,	Description)
	VALUES	('BUILDINGCLASS_JINJA',	'BUILDING_JINJA',	'Jinja')
	
INSERT INTO Beliefs
			(Type,				Description,	ShortDescription,	Follower,	Tooltip)
	VALUES	('BELIEF_JINJA',	'Description',	'Jinja',			1,			'Tooltip')

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,	 BuildingClassType)
	VALUES  ('BELIEF_JINJA', 'BUILDINGCLASS_JINJA')

INSERT INTO Building_YieldChanges
			(BuildingType,		YieldType,		Yield)
	VALUES	('BUILDING_JINJA',	'YIELD_FAITH',	2),
			('BUILDING_JINJA',	'YIELD_GREAT_GENERAL_POINTS',	1);

INSERT INTO Building_ImprovementYieldChanges
			(BuildingType,		ImprovementType,	 YieldType,		Yield)
	VALUES	('BUILDING_JINJA',	IMPROVEMENT_FORT,	 'YIELD_FOOD',	2),
			('BUILDING_JINJA',	IMPROVEMENT_CITADEL, 'YIELD_FOOD',	2);
