--===========================================
-- Rise Moon Dummy
--===========================================

--===========================================
-- +5% FAITH
-- +5% GREAT PEOPLE
-- -5% EMPIRE NEED MODIFIERS
--===========================================
INSERT INTO BuildingClasses
			(Type,									DefaultBuilding,				NoLimit)
VALUES		('BUILDINGCLASS_DF_MOONSHINE_ARCANUM', 'BUILDING_DF_MOONSHINE_ARCANUM', 1);

INSERT INTO Buildings
			(Type,								BuildingClass,						Description,				 GoldMaintenance,		Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex, IsDummy, GlobalGreatPeopleRateModifier, EmpireNeedsModifierGlobal)
VALUES		('BUILDING_DF_MOONSHINE_ARCANUM','BUILDINGCLASS_DF_MOONSHINE_ARCANUM',	'Dummy Moonshine''s Arcanum',	 0,					-1,		-1,			-1,				1,				1,			0,				-1,					'CIV_COLOR_ATLAS',	0,				1,		'5',							'-5');

INSERT INTO Building_GlobalYieldModifiers ("BuildingType", "YieldType", "Yield") 
VALUES ('BUILDING_DF_MOONSHINE_ARCANUM', 'YIELD_FAITH', '5');

--===========================================
-- +15% GREAT PEOPLE
-- -15% EMPIRE NEED MODIFIERS
-- +15% FAITH
--===========================================
INSERT INTO BuildingClasses
			(Type,									DefaultBuilding,				NoLimit)
VALUES		('BUILDINGCLASS_DF_MOONSHINE_ARCANUM_BONUS', 'BUILDING_DF_MOONSHINE_ARCANUM', 1);

INSERT INTO Buildings																								-- +15% global great people	  -15% maintenance
			(Type,								BuildingClass,						Description,				  "GlobalGreatPeopleRateModifier", "EmpireNeedsModifierGlobal",GoldMaintenance,		Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex, IsDummy, GlobalGreatPeopleRateModifier, EmpireNeedsModifierGlobal)
VALUES		('BUILDING_DF_MOONSHINE_ARCANUM_BONUS','BUILDINGCLASS_DF_MOONSHINE_ARCANUM_BONUS',	'Dummy Moonshine''s Arcanum','15',							   					'-15',		 0,					-1,		-1,			-1,				1,				1,			0,				-1,					'CIV_COLOR_ATLAS',	0,				1,		'5',							'-5');

-- +15% faith  
INSERT INTO "Building_YieldModifiers" ("BuildingType", "YieldType", "Yield") 
VALUES ('BUILDING_DF_MOONSHINE_ARCANUM_BONUS', 'YIELD_FAITH', '15');



