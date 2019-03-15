/*
INSERT INTO Beliefs
			(Type,				Description,ShortDescription,	Founder, 			Tooltip)
	VALUES	('BELIEF_RISE_MOON',  'Descr',	'Rise Moon',		1,				'Tooltip')

*/
--===================================
--Peace hegemony
--===================================

INSERT INTO Beliefs
			(Type,						Description,																														ShortDescription,						Founder,	FriendlyCityStateSpreadModifier,		CSYieldBonusFromSharedReligion,				Tooltip)
	VALUES	('BELIEF_PEACE_HEGEMONY',  '+50% Yields from Friendly/ Allied City States Following this Religon.[NEWLINE]Missionary are 25% stronger to friendly city state',	'Peace hegemony',					1,					25					,									50,		'+50% Yields from Friendly/ Allied City States Following this Religon.[NEWLINE]Missionary are 25% stronger to friendly city state')

INSERT INTO Buildings
			(Type,				BuildingClass,					Description,			 Civilopedia,							Strategy,		Help,																																																																																																																																							ConquestProb,	ReligiousPressureModifier,	ConversionModifier, Cost,	UnlockedByBelief,	FaithCost,	HolyCity,	 NumCityCostMod,		HurryCostModifier, MinAreaSize,	MinorityHappinessChange,	GlobalFollowerPopRequired,			IsReformation,			ConversionModifier,			ArtDefineTag,	MinAreaSize,						IconAtlas,			PortraitIndex)
	VALUES	('BUILDING_PEACE_MAKER', 'BUILDINGCLASS_PEACE_MAKER',  'Peace maker',		'Civilopedia_peace_maker',	'peace_maker_Strat',	'+50% Yields from Friendly/ Allied City States Following this Religon and Missionaries are 25% stronger to friendly city state[NEWLINE][NEWLINE]+5 [ICON_GOLDEN_AGE] Golden Age Points from all Holy Sites.[NEWLINE][NEWLINE] May only be constructed in a Holy City, and only if at least 15% of the global population follows your Religion (scaling with map size). Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.'	,	0,								25,				-10,	125,		1,					 -1,		1,						15,						-20,		-1,							-10,							15,						1,							-20,			'TEMPLE',		-1,				'JFD_PIETY_BELIEF_ATLAS',						2)

	
INSERT INTO BuildingClasses 
			(Type,					DefaultBuilding,	Description)
	VALUES	('BUILDINGCLASS_PEACE_MAKER',	'BUILDING_PEACE_MAKER',	'Peace maker')

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_PEACE_MAKER', 'YIELD_FAITH', 3),
	('BUILDING_PEACE_MAKER', 'YIELD_FOOD', 3);


INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_PEACE_MAKER', 'FLAVOR_RELIGION', 200)

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_PEACE_HEGEMONY', 'BUILDING_PEACE_MAKER'),

INSERT INTO Building_ImprovementYieldChangesGlobal
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_PEACE_MAKER', 'IMPROVEMENT_HOLY_SITE', 'YIELD_GOLDEN_AGE_POINTS', 5),


--==============================================
--update hero worship
--==============================================
INSERT INTO Belief_YieldFromConquest
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_CULTURE', 100)