--===========================================
--War Cult
--===========================================
INSERT INTO BuildingClasses 	
			(Type,									DefaultBuilding,				NoLimit)
VALUES		('BUILDINGCLASS_D_WARCULT',				'BUILDING_D_WARCULT',			1)

INSERT INTO Buildings 	
			(Type,							BuildingClass,						Description,CapitalOnly, 	GoldMaintenance,	Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex, IsDummy)
VALUES		('BUILDING_D_WARCULT',		'BUILDINGCLASS_D_WARCULT',				'nil',					0, 				0,			-1,			-1,				-1,				1,				1,			0,				-1,	'CIV_COLOR_ATLAS',						0,		1)

INSERT INTO Building_YieldFromUnitProduction
			(BuildingType, YieldType, Yield)
VALUES		('BUILDING_D_WARCULT', 'YIELD_CULTURE', 5),
			('BUILDING_D_WARCULT', 'YIELD_FAITH',	10);

 --===========================================
 --Dummies
 --===========================================

------------------------------
-- Policies (NEW)
------------------------------
INSERT INTO Policies
		(Type,						Description,						IsDummy)
VALUES	('POLICY_MB_HOLY_CRUSADER',	'Crusader',	1);
------------------------------
-- Policy_BuildingClassProductionModifiers (NEW)
------------------------------

INSERT INTO Policy_BuildingClassProductionModifiers
			("PolicyType", "BuildingClassType", "ProductionModifier")
VALUES		('POLICY_MB_HOLY_CRUSADER', 'BUILDINGCLASS_BARRACKS',			'100'),
			('POLICY_MB_HOLY_CRUSADER', 'BUILDINGCLASS_ARMORY',				'100'),
			('POLICY_MB_HOLY_CRUSADER', 'BUILDINGCLASS_MILITARY_ACADEMY',	'100');