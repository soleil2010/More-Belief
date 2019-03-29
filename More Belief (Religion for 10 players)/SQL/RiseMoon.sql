

--======================================================================================================================================
--Rise Moon
--======================================================================================================================================

---------------------------------
--Belief
---------------------------------

INSERT INTO Beliefs ("Type",			"Description",	"ShortDescription", "Pantheon", "Founder", "Follower","FriendlyCityStateSpreadModifier","Tooltip","MissionaryInfluenceCS","CSYieldBonusFromSharedReligion")
			 VALUES ('BELIEF_RISE_MOON', 'Description',	'Rise Moon',			'0',		'1',		'0',	'25'							,'tooltip','5',						'50');

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_RISE_MOON', 'BUILDINGCLASS_MOONSHINE_ARCANUM');

---------------------------------
-- Building Moonshine's Arcanum 
---------------------------------

-- 3 slots Litterature																																																																																																																																																																																																																																																																																																																										+15% global great people																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									-15% maintenance																																																																																																																																																																																										
INSERT INTO Buildings 
			("Type",								"Description",						"Civilopedia",			"Strategy",						"Help",																																																																																																								"GoldMaintenance", "MutuallyExclusiveGroup",	"TeamShare",	"Water",	"River",	"FreshWater",	"Mountain",		"NearbyMountainRequired",	"Hill", "Flat", "FoundsReligion",	"IsReligious", "BorderObstacle", "PlayerBorderObstacle",	"Capital", "GoldenAge", "MapCentering", "NeverCapture", "NukeImmune",	"AllowsWaterRoutes",	"ExtraLuxuries",	"DiplomaticVoting", "AffectSpiesNow",	"NullifyInfluenceModifier", "Cost", "FaithCost",	"LeagueCost",	"UnlockedByBelief", "UnlockedByLeague", "HolyCity",	"NumCityCostMod",	"HurryCostModifier",	"MinAreaSize", "ConquestProb", "CitiesPrereq", "LevelPrereq", "CultureRateModifier",	"GlobalCultureRateModifier",	"GreatPeopleRateModifier", "GlobalGreatPeopleRateModifier", "GreatGeneralRateModifier", "GreatPersonExpendGold", "GoldenAgeModifier", "UnitUpgradeCostMod", "Experience", "GlobalExperience", "FoodKept", "Airlift", "AirModifier", "NukeModifier", "NukeExplosionRand", "HealRateChange", "Happiness", "UnmoddedHappiness", "UnhappinessModifier", "HappinessPerCity", "HappinessPerXPolicies", "CityCountUnhappinessMod", "NoOccupiedUnhappiness", "WorkerSpeedModifier", "MilitaryProductionModifier", "SpaceProductionModifier", "GlobalSpaceProductionModifier", "BuildingProductionModifier", "WonderProductionModifier", "CityConnectionTradeRouteModifier", "CapturePlunderModifier", "PolicyCostModifier", "PlotCultureCostModifier", "GlobalPlotCultureCostModifier", "PlotBuyCostModifier", "GlobalPlotBuyCostModifier", "GlobalPopulationChange", "TechShare", "FreeTechs", "FreePolicies", "FreeGreatPeople", "MedianTechPercentChange", "Gold", "AllowsRangeStrike", "Espionage", "AllowsFoodTradeRoutes", "AllowsProductionTradeRoutes", "Defense", "ExtraCityHitPoints", "GlobalDefenseMod", "MinorFriendshipChange", "VictoryPoints", "ExtraMissionarySpreads", "ReligiousPressureModifier", "EspionageModifier", "GlobalEspionageModifier", "ExtraSpies", "SpyRankChange", "InstantSpyRankChange", "TradeRouteRecipientBonus", "TradeRouteTargetBonus", "NumTradeRouteBonus", "LandmarksTourismPercent", "InstantMilitaryIncrease", "GreatWorksTourismModifier", "XBuiltTriggersIdeologyChoice", "TradeRouteSeaDistanceModifier", "TradeRouteSeaGoldBonus", "TradeRouteLandDistanceModifier", "TradeRouteLandGoldBonus", "CityStateTradeRouteProductionModifier", "GreatScientistBeakerModifier",		"BuildingClass",					"ArtDefineTag",		"PortraitIndex",	 "WonderSplashAnchor",		"IconAtlas",			"ArtInfoCulturalVariation", "ArtInfoEraVariation", "ArtInfoRandomVariation", "IsNoWater", "IsNoRiver", "CapitalOnly", "NumPoliciesNeeded", "NationalPopRequired", "LocalPopRequired", "BorderObstacleCity", "BorderObstacleWater", "AllowsFoodTradeRoutesGlobal", "AllowsProductionTradeRoutesGlobal", "CityConnectionGoldModifier", "EmpireNeedsModifier", "EmpireNeedsModifierGlobal", "PovertyHappinessChange", "DefenseHappinessChange", "IlliteracyHappinessChange", "UnculturedHappinessChange", "MinorityHappinessChange", "PovertyHappinessChangeGlobal", "DefenseHappinessChangeGlobal", "IlliteracyHappinessChangeGlobal", "UnculturedHappinessChangeGlobal", "MinorityHappinessChangeGlobal", "LocalUnhappinessModifier", "GlobalBuildingGoldMaintenanceMod", "NationalFollowerPopRequired", "GlobalFollowerPopRequired", "ReformationFollowerReduction", "ExtraMissionarySpreadsGlobal", "IsReformation", "PuppetPurchaseOverride", "SingleLeagueVotes", "AllowsPuppetPurchase", "GrantsRandomResourceTerritory", "ResourceQuantityToPlace", "TradeReligionModifier", "WLTKDTurns", "EventTourism", "AlwaysHeal", "CitySupplyModifier", "CitySupplyModifierGlobal", "CitySupplyFlat", "CitySupplyFlatGlobal", "CityRangedStrikeRange", "CityIndirectFire", "RangedStrikeModifier", "ExtraMissionaryStrengthGlobal", "ResourceDiversityModifier", "FinishLandTRTourism", "FinishSeaTRTourism", "VotesPerGPT", "RequiresRail", "PurchaseCooldown", "CityAirStrikeDefense", "BuildAnywhere", "FreeArtifacts", "VassalLevyEra", "NumRequiredTier3Tenets", "CannotFailSpies", "AdvancedActionGold", "AdvancedActionScience", "AdvancedActionUnrest", "AdvancedActionRebellion", "AdvancedActionGP", "AdvancedActionUnit", "AdvancedActionWonder", "AdvancedActionBuilding", "BlockBuildingDestructionSpies", "BlockWWDestructionSpies", "BlockUDestructionSpies", "BlockGPDestructionSpies", "BlockRebellionSpies", "BlockUnrestSpies", "BlockScienceTheft", "BlockGoldTheft", "IsCorporation", "GPRateModifierPerXFranchises", "TRSpeedBoost", "TRVisionBoost", "DPToVotes", "SecondaryPantheon", "IsDummy", "AnyWater", "BuildingDefenseModifier", "GlobalLandmarksTourismPercent", "GlobalGreatWorksTourismModifier", "NukeInterceptionChance", "ShowInPedia", "FaithToVotes", "CapitalsToVotes", "DoFToVotes", "RAToVotes", "GPExpendInfluence", "AddsFreshWater", "PurchaseOnly", "CityWorkingChange", "GlobalCityWorkingChange", "GreatWorkYieldType", "GlobalConversionModifier", "ConversionModifier", "PlayerBorderGainlessPillage", "CityGainlessPillage", "GreatWorkSlotType",			GreatWorkCount)
VALUES		('BUILDING_MOONSHINE_ARCANUM',			'Moonshine''s Arcanum',				'Moonshine''s Arcanum',	'MOONSHINE_ARCANUM_STRATEGY',	'+3 Slots for [ICON_GREAT_WRITER] Great Writer. (When filled +5  [ICON_CULTURE] Culture and [ICON_RESEARCH]Sciences)[NEWLINE]+5 [ICON_CULTURE] Culture[NEWLINE]Holy sites:[NEWLINE][TAB]+2 [ICON_FOOD] Food[NEWLINE][TAB]+3 [ICON_FAITH] Faith[NEWLINE][NEWLINE]Great Works [GREAT_WORK] :[NEWLINE][TAB]+2 [ICON_FAITH] Faith[NEWLINE][TAB]+2 [ICON_RESEARCH] Sciences[NEWLINE][TAB]+2 [ICON_CULTURE] Culture[NEWLINE][NEWLINE]',	'0',				'-1',						'0',			'0',		'0',		'0',			'0',			'0',						'0',	 '0',	 '0',				'0',			 '0',				 '0',					'0',		'0',		'0',			'1',			 '1',			'0',					'0',				'0',				'0',				'0',						'125',	'-1',			'0',			'1',				'0',				'1',		'15',				'-20',					'-1',			'0',			'0',			'0',				'0',				'0',							'0',						'15',							'0',						'0',					'0',					'0',				'0',				'0',			'0',		'0',			'0',			'0',				'0',			'0',			'0',				'0',					'0',				'0',					'0',						'0',					'0',					'0',						'0',						'0',							'0',							'0',						'0',								'0',					'0',					'0',					'0',								'0',				'0',							'0',					'0',		'0',			'0',			'0',			'0',						'0',	'0',				'0',			'0',					'0',							'0',		'0',					'0',				'0',					'0',			'0',						'1',						'25',				'0',						'0',			'0',			'0',					'0',						'0',					'0',					'0',					'0',						'0',						'0',							'0',								'0',					'0',								'0',					'0',										'0',							'0',	'BUILDINGCLASS_MOONSHINE_ARCANUM',	'TEMPLE',			'2',					'R,T',				'JFD_PIETY_BELIEF_ATLAS',						'0',				'0',						'0',		'0',		'0',			'0',				'0',					'0',				'0',					'0',				'0',							'0',								'0',							'0',					'0',						'-15',					'0',						'0',						'0',						'0',						'0',							'0',							'0',								'0',								'0',							'0',						'0',								'0',							'0',						'15',							'0',							'0',			'1',						'0',				'0',					'0',							'0',						'0',					'0',			'0',			'0',		'0',					'0',						'0',			'0',					'0',					'0',				'0',					'0',								'0',						'0',					'0',				'0',			'0',			'0',				'0',					'0',			'0',			'0',				'0',					'0',				'0',				'0',						'0',					'0',					'0',				'0',					'0',					'0',					'0',								'0',						'0',					'0',						'0',					'0',			'0',					'0',			'0',				'0',						'0',			'0',				'0',		'0',				'0',		'0',		'0',						'0',							'0',								'0',					'0',			'1',			'10',				'0',		'0',		'0',					'0',			'0',			'0',				'0',						'0',		'YIELD_CULTURE',						'0',				'-20',							'0',					'0',	'GREAT_WORK_SLOT_LITERATURE',	'3');

INSERT INTO Building_Flavors ("BuildingType",				"FlavorType",		"Flavor") 
VALUES						('BUILDING_MOONSHINE_ARCANUM',	'FLAVOR_RELIGION',	'200');


-- give 5 sciences and culture when great works slots filled
INSERT INTO Building_ThemingYieldBonus ("BuildingType", "YieldType", "Yield") 
VALUES	('BUILDING_MOONSHINE_ARCANUM', 'YIELD_CULTURE', '5'),
		('BUILDING_MOONSHINE_ARCANUM', 'YIELD_SCIENCE', '5');
-- by great works, we get 2 faithes, culture and sciences
INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MOONSHINE_ARCANUM', 'YIELD_FAITH', 2),
	('BUILDING_MOONSHINE_ARCANUM', 'YIELD_CULTURE', 2),
	('BUILDING_MOONSHINE_ARCANUM', 'YIELD_SCIENCE', 2);


---------------------------------
-- holy site 
-- give 2 foods and 3 faithes
---------------------------------
INSERT INTO Building_ImprovementYieldChangesGlobal
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BELIEF_RISE_MOON', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FOOD', 2),
	('BELIEF_RISE_MOON', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FAITH', 3);

---------------------------------
-- holy city modifier
---------------------------------
-- +15% great artist
INSERT INTO Building_SpecificGreatPersonRateModifier ("BuildingType", "SpecialistType", "Modifier") 
VALUES ('BUILDING_MOONSHINE_ARCANUM', 'SPECIALIST_ARTIST', '15');

-- +15% faith  
INSERT INTO Building_GlobalYieldModifiers ("BuildingType", "YieldType", "Yield") 
VALUES ('BUILDING_MOONSHINE_ARCANUM', 'YIELD_Faith', '15');
