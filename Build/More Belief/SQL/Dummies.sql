--===========================================
-- Rise Moon Dummy
--===========================================

INSERT INTO BuildingClasses
			(Type,									DefaultBuilding,				NoLimit)
VALUES		('BUILDINGCLASS_DF_MOONSHINE_ARCANUM', 'BUILDING_DF_MOONSHINE_ARCANUM', 1);

INSERT INTO Buildings
			(Type,								BuildingClass,						Description,				 GoldMaintenance,		Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex, IsDummy, GlobalGreatPeopleRateModifier, EmpireNeedsModifierGlobal)
VALUES		('BUILDING_DF_MOONSHINE_ARCANUM','BUILDINGCLASS_DF_MOONSHINE_ARCANUM',	'Dummy Moonshine''s Arcanum',	 0,					-1,		-1,			-1,				1,				1,			0,				-1,					'CIV_COLOR_ATLAS',	0,				1,		'5',							'-5');

INSERT INTO Building_GlobalYieldModifiers ("BuildingType", "YieldType", "Yield") 
VALUES ('BUILDING_DF_MOONSHINE_ARCANUM', 'YIELD_Faith', '5');


