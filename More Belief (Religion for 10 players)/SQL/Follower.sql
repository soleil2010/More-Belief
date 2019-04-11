--===========================================================================================================
--BUILDING
--===========================================================================================================
-- Lupanar
--===========================================================================================================
--===========================================================================================================
-- Lupanar [Operationnel]
--===========================================================================================================
INSERT INTO Buildings
			(Type,				BuildingClass,			  Description, Civilopedia,			Strategy,	Help,																																																																																																											ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	 UnculturedHappinessChange,		DefenseHappinessChange, Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_LUPANAR', 'BUILDINGCLASS_LUPANAR',  'Lupanar', 'Civilopedia_Lupanar','Lup_Strat','Empire [ICON_HAPPINESS_3] Needs Modifier (illiteracy and Boredom) is reduce by -10% in this city.  Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.',																									0,						25,					-10,	-1,			1,					 200,				-10,								-10,			1,			'TEMPLE',		-1,				'DF_BELIEF_ATLAS',	0);
	
INSERT INTO BuildingClasses 
			(Type,						DefaultBuilding,  Description)
	VALUES	('BUILDINGCLASS_LUPANAR',	'BUILDING_LUPANAR',	 'Lupanar');

INSERT INTO Beliefs ("Type",			"Description",									"ShortDescription", "Pantheon", "Founder", "Follower",		"Tooltip")
			 VALUES ('BELIEF_LUPANAR',	'Use [ICON_PEACE] Faith to purchase Lupanar',	'Lupanar',			'0',		'0',		'1',		'+2 [ICON_PEACE] Faith[NEWLINE]+2 [ICON_CULTURE][NEWLINE]+1 [ICON_HAPPINESS_1] Happiness[NEWLINE][NEWLINE]Empire [ICON_HAPPINESS_3]Boredom and Distress Needs Modifier is reduce by -10% in this city. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE] Gain [ICON_FOOD] and [ICON_PEACE] every time a citizen is born in the city. 10% [ICON_FOOD] in the city during Golden Age.');

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,			 BuildingClassType)
	VALUES  ('BELIEF_LUPANAR', 'BUILDINGCLASS_LUPANAR');

INSERT INTO Building_YieldChanges
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FAITH',	2 ),		
			('BUILDING_LUPANAR',	'YIELD_CULTURE',2 );

INSERT INTO Building_YieldFromBirth
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FAITH',	10),
			('BUILDING_LUPANAR',	'YIELD_FOOD',	10);

INSERT INTO Building_GoldenAgeYieldMod
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_LUPANAR',	'YIELD_FOOD',	10 );
/*
INSERT INTO Building_UnhappinessNeedsFlatReduction ("BuildingType", "YieldType", "Yield") 
VALUES												('BUILDING_LUPANAR', 'YIELD_CULTURE', '0'),
													('BUILDING_LUPANAR', 'YIELD_GOLD', '0'),
													('BUILDING_LUPANAR', 'YIELD_SCIENCE', '0'),
													('BUILDING_LUPANAR', 'YIELD_PRODUCTION', '0');
													*/
--===========================================================================================================
-- Jinja
--===========================================================================================================
INSERT INTO Beliefs ("Type",		 "Description",									"ShortDescription", "Pantheon", "Founder", "Follower",	"Tooltip")
			 VALUES ('BELIEF_JINJA', 'Use [ICON_PEACE] Faith to purchase Jinja',	'Jinja',			'0',		'0',		'1',		'+3 [ICON_PEACE] Faith[NEWLINE]+1 [ICON_GREAT_GENERAL] Great General point[NEWLINE][NEWLINE]-1 [ICON_HAPPINESS_3] Unhappiness from [ICON_FOOD]/[ICON_PRODUCTION] Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Forts gain +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.[NEWLINE]Citadels near the city gain +3 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.');

INSERT INTO Buildings
		(Type,				BuildingClass,			Description, Civilopedia,			Strategy,		Help,																																																																																																		ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	UnculturedHappinessChange,		DefenseHappinessChange,		Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
VALUES	('BUILDING_JINJA', 'BUILDINGCLASS_JINJA',  'Jinja',		 'Civilopedia_Jinja',	'Jinja_Strat',	'-1 [ICON_HAPPINESS_3] Unhappiness from [ICON_FOOD]/[ICON_PRODUCTION] Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Forts gain +2 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.[NEWLINE]Citadels near the city gain +3 [ICON_FOOD] Food and +1 [ICON_PRODUCTION] Production.',			0,				25,							-10,	-1,		1,					 200,		0,								-10,								0,			'TEMPLE',		-1,				'JFD_PIETY_BELIEF_ATLAS',	3);
	
INSERT INTO BuildingClasses 
			(Type,					DefaultBuilding,  Description)
	VALUES	('BUILDINGCLASS_JINJA',	'BUILDING_JINJA',	 'Jinja');

INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,			 BuildingClassType)
	VALUES  ('BELIEF_JINJA', 'BUILDINGCLASS_JINJA');

INSERT INTO Building_YieldChanges
			(BuildingType,			YieldType,		Yield)
	VALUES	('BUILDING_JINJA',	'YIELD_FAITH',	3 ),		
			('BUILDING_JINJA',	'YIELD_GREAT_GENERAL_POINTS',2 );



	INSERT INTO Building_ImprovementYieldChanges
				(BuildingType,		ImprovementType,	 YieldType,		Yield)
		VALUES	('BUILDING_JINJA',	'IMPROVEMENT_FORT',	 'YIELD_FOOD',	2),
				('BUILDING_JINJA',	'IMPROVEMENT_CITADEL', 'YIELD_FOOD',	3),
				('BUILDING_JINJA',	'IMPROVEMENT_FORT',	 'YIELD_PRODUCTION',	2),
				('BUILDING_JINJA',	'IMPROVEMENT_CITADEL', 'YIELD_PRODUCTION',	2);

/*
INSERT INTO Building_UnhappinessNeedsFlatReduction ("BuildingType", "YieldType", "Yield") 
VALUES												('BUILDING_JINJA', 'YIELD_PRODUCTION', '1');
*/
--===========================================================================================================
-- War cult
--===========================================================================================================
INSERT INTO Beliefs ("Type",			"Description",										"ShortDescription", "Pantheon", "Founder", "Follower",	"UnitProductionModifier",				"Tooltip")
			 VALUES ('BELIEF_WAR_CULT', 'Use [ICON_PEACE] Faith to purchase War Cult',		'War Cult',			'0',		'0',		'1',						0,						'+3 [ICON_PEACE] Faith[NEWLINE]+2 [ICON_PRODUCTION] Production[NEWLINE]+15% production towards military units[NEWLINE][NEWLINE]-1 [ICON_HAPPINESS_3] Unhappiness from [ICON_FOOD]/[ICON_PRODUCTION] Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.Gain [ICON_CULTURE] Culture and [ICON_PEACE] Faith when training military units.');

INSERT INTO Buildings
		(Type,					BuildingClass,				Description,	Civilopedia,			Strategy,			Help,																																																																														MilitaryProductionModifier,	ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	UnculturedHappinessChange,		DefenseHappinessChange,		Happiness,  ArtDefineTag,	MinAreaSize,	IconAtlas,			PortraitIndex)
VALUES	('BUILDING_WAR_CULT',	'BUILDINGCLASS_WAR_CULT',  'War Cult',		'Civilopedia_WAR_CULT',	'WAR_CULT_Strat',	'-1 [ICON_HAPPINESS_3] Unhappiness from [ICON_FOOD]/[ICON_PRODUCTION] Distress. Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE]Gain [ICON_CULTURE] Culture and [ICON_PEACE] Faith when training military units',							15,				0,				25,							-10,		-1,					1,			200,						0,							-10,		0,			'TEMPLE',		-1,				'JFD_PIETY_BELIEF_ATLAS',	8);
	
INSERT INTO BuildingClasses 
		(Type,					DefaultBuilding,	Description)
VALUES	('BUILDINGCLASS_WAR_CULT',	'BUILDING_WAR_CULT',	'War Cult');



INSERT INTO Belief_BuildingClassFaithPurchase 
			(BeliefType,	 BuildingClassType)
	VALUES  ('BELIEF_WAR_CULT', 'BUILDINGCLASS_WAR_CULT');

INSERT INTO Building_YieldChanges
			(BuildingType,		YieldType,		Yield)
	VALUES	('BUILDING_WAR_CULT',	'YIELD_FAITH',	3),
			('BUILDING_WAR_CULT',	'YIELD_PRODUCTION',	2);

INSERT INTO Building_YieldFromUnitProduction
			(BuildingType,		YieldType,		Yield)
VALUES		('BUILDING_WAR_CULT','YIELD_FAITH', 15),
			('BUILDING_WAR_CULT','YIELD_CULTURE', 15);
/*
INSERT INTO Building_UnhappinessNeedsFlatReduction ("BuildingType", "YieldType", "Yield") 
VALUES												('BUILDING_WAR_CULT', 'YIELD_PRODUCTION', '1');
*/
--===========================================================================================================
-- God of OPULENCE 
--===========================================================================================================

INSERT INTO Beliefs ("Type",				"Description",																														"ShortDescription",		"Pantheon", "Founder", "Follower",	UnitProductionModifier,	"Tooltip")
			 VALUES ('BELIEF_GODOPULENCE', '+2 of each yield when in cities with your religion and connected to your capital',		'God of opulence',		'0',		'0',		'1',		0,						'+2 of each yield when in cities with your religion and connected to your capital');
/*
INSERT INTO Belief_YieldPerLux
			(BeliefType,			YieldType, Yield)
VALUES		('BELIEF_GODOPULENCE', 'YIELD_FAITH', 2),
			('BELIEF_GODOPULENCE', 'YIELD_GOLD', 2),
			('BELIEF_GODOPULENCE', 'YIELD_CULTURE', 1),
			('BELIEF_GODOPULENCE', 'YIELD_FOOD', 1);
*/
INSERT INTO Belief_YieldChangeTradeRoute
			("BeliefType",			"YieldType",	"Yield")
VALUES		('BELIEF_GODOPULENCE', 'YIELD_CULTURE',		'2'),
			('BELIEF_GODOPULENCE', 'YIELD_FOOD',		'2'),
			('BELIEF_GODOPULENCE', 'YIELD_PRODUCTION',	'2'),
			('BELIEF_GODOPULENCE', 'YIELD_GOLD',		'2'),
			('BELIEF_GODOPULENCE', 'YIELD_SCIENCE',		'2'),
			('BELIEF_GODOPULENCE', 'YIELD_FAITH',		'2');
