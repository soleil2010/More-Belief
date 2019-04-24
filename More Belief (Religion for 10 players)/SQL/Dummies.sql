
--===========================================
-- Gemoust Dummy
--===========================================

--===========================================
-- +2% GREAT Artist, Mucisian, writer
--===========================================
INSERT INTO BuildingClasses
			(Type,									DefaultBuilding,				NoLimit)
VALUES		('BUILDINGCLASS_DF_Gemoust', 'BUILDING_DF_Gemoust', 1);

INSERT INTO Buildings
			(Type,								BuildingClass,							Description,				 GoldMaintenance,		Cost,	FaithCost,	GreatWorkCount, NeverCapture,	NukeImmune, ConquestProb,	HurryCostModifier,	IconAtlas,			PortraitIndex, IsDummy)
VALUES		('BUILDING_DF_Gemoust',	'BUILDINGCLASS_DF_Gemoust',	'Dummy Gemoust',	 0,					-1,		-1,			-1,				1,				1,			0,				-1,					'CIV_COLOR_ATLAS',	0,				1);

---------------------------------
-- Building modifier
---------------------------------
-- +2% great artist,writer and musician
INSERT INTO Building_SpecificGreatPersonRateModifier ("BuildingType", "SpecialistType", "Modifier") 
VALUES	('BUILDING_DF_Gemoust', 'SPECIALIST_WRITER', '2'),
		('BUILDING_DF_Gemoust', 'SPECIALIST_MUSICIAN', '2'),
		('BUILDING_DF_Gemoust', 'SPECIALIST_ARTIST', '2');

