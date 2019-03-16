--===================================
--Peace hegemony
--===================================
INSERT INTO Beliefs ("Type",		 "Description",									"ShortDescription", "Pantheon", "Founder", "Follower","FriendlyCityStateSpreadModifier","Tooltip","MissionaryInfluenceCS","CSYieldBonusFromSharedReligion")
			 VALUES ('BELIEF_PEACE_HEGEMONY', 'Unlocks Peace Maker Wonder [COLOR_MAGENTA]+3 [ICON_PEACE] Faith, +3 [ICON_FOOD] Food; +5 [ICON_GOLDEN_AGE] Golden Age Points from Holy Sites; unlocks Reformation Belief[ENDCOLOR]). +50% Yields from Friendly/ Allied City States Following this Religon.[NEWLINE]Missionary are 25% stronger to friendly city state.',	'Peace Hegemony',			'0',		'1',		'0',		'25','(Unlocks Peace Maker Wonder [COLOR_MAGENTA]+3 [ICON_PEACE] Faith, +3 [ICON_FOOD] Food; +5 [ICON_GOLDEN_AGE] Golden Age Points from Holy Sites; unlocks Reformation Belief[ENDCOLOR]). +50% Yields from Friendly/ Allied City States Following this Religon.[NEWLINE]Missionary are 25% stronger to friendly city state.[NEWLINE]When missionary spread religion to a city-state, gain 5 influences towrds the city-state','5','50');

INSERT INTO Buildings 
			("Type",								"Description",						"Civilopedia",								"Strategy",																																																																																																																																					"Help", "GoldMaintenance", "MutuallyExclusiveGroup", "TeamShare", "Water", "River", "FreshWater", "Mountain", "NearbyMountainRequired", "Hill", "Flat", "FoundsReligion", "IsReligious", "BorderObstacle", "PlayerBorderObstacle", "Capital", "GoldenAge", "MapCentering", "NeverCapture", "NukeImmune", "AllowsWaterRoutes", "ExtraLuxuries", "DiplomaticVoting", "AffectSpiesNow", "NullifyInfluenceModifier", "Cost", "FaithCost", "LeagueCost", "UnlockedByBelief", "UnlockedByLeague", "HolyCity", "NumCityCostMod", "HurryCostModifier", "MinAreaSize", "ConquestProb", "CitiesPrereq", "LevelPrereq", "CultureRateModifier", "GlobalCultureRateModifier", "GreatPeopleRateModifier", "GlobalGreatPeopleRateModifier", "GreatGeneralRateModifier", "GreatPersonExpendGold", "GoldenAgeModifier", "UnitUpgradeCostMod", "Experience", "GlobalExperience", "FoodKept", "Airlift", "AirModifier", "NukeModifier", "NukeExplosionRand", "HealRateChange", "Happiness", "UnmoddedHappiness", "UnhappinessModifier", "HappinessPerCity", "HappinessPerXPolicies", "CityCountUnhappinessMod", "NoOccupiedUnhappiness", "WorkerSpeedModifier", "MilitaryProductionModifier", "SpaceProductionModifier", "GlobalSpaceProductionModifier", "BuildingProductionModifier", "WonderProductionModifier", "CityConnectionTradeRouteModifier", "CapturePlunderModifier", "PolicyCostModifier", "PlotCultureCostModifier", "GlobalPlotCultureCostModifier", "PlotBuyCostModifier", "GlobalPlotBuyCostModifier", "GlobalPopulationChange", "TechShare", "FreeTechs", "FreePolicies", "FreeGreatPeople", "MedianTechPercentChange", "Gold", "AllowsRangeStrike", "Espionage", "AllowsFoodTradeRoutes", "AllowsProductionTradeRoutes", "Defense", "ExtraCityHitPoints", "GlobalDefenseMod", "MinorFriendshipChange", "VictoryPoints", "ExtraMissionarySpreads", "ReligiousPressureModifier", "EspionageModifier", "GlobalEspionageModifier", "ExtraSpies", "SpyRankChange", "InstantSpyRankChange", "TradeRouteRecipientBonus", "TradeRouteTargetBonus", "NumTradeRouteBonus", "LandmarksTourismPercent", "InstantMilitaryIncrease", "GreatWorksTourismModifier", "XBuiltTriggersIdeologyChoice", "TradeRouteSeaDistanceModifier", "TradeRouteSeaGoldBonus", "TradeRouteLandDistanceModifier", "TradeRouteLandGoldBonus", "CityStateTradeRouteProductionModifier", "GreatScientistBeakerModifier", "BuildingClass",			"ArtDefineTag", "PortraitIndex",	 "WonderSplashAnchor",		"IconAtlas", "ArtInfoCulturalVariation", "ArtInfoEraVariation", "ArtInfoRandomVariation", "IsNoWater", "IsNoRiver", "CapitalOnly", "NumPoliciesNeeded", "NationalPopRequired", "LocalPopRequired", "BorderObstacleCity", "BorderObstacleWater", "AllowsFoodTradeRoutesGlobal", "AllowsProductionTradeRoutesGlobal", "CityConnectionGoldModifier", "EmpireNeedsModifier", "EmpireNeedsModifierGlobal", "PovertyHappinessChange", "DefenseHappinessChange", "IlliteracyHappinessChange", "UnculturedHappinessChange", "MinorityHappinessChange", "PovertyHappinessChangeGlobal", "DefenseHappinessChangeGlobal", "IlliteracyHappinessChangeGlobal", "UnculturedHappinessChangeGlobal", "MinorityHappinessChangeGlobal", "LocalUnhappinessModifier", "GlobalBuildingGoldMaintenanceMod", "NationalFollowerPopRequired", "GlobalFollowerPopRequired", "ReformationFollowerReduction", "ExtraMissionarySpreadsGlobal", "IsReformation", "PuppetPurchaseOverride", "SingleLeagueVotes", "AllowsPuppetPurchase", "GrantsRandomResourceTerritory", "ResourceQuantityToPlace", "TradeReligionModifier", "WLTKDTurns", "EventTourism", "AlwaysHeal", "CitySupplyModifier", "CitySupplyModifierGlobal", "CitySupplyFlat", "CitySupplyFlatGlobal", "CityRangedStrikeRange", "CityIndirectFire", "RangedStrikeModifier", "ExtraMissionaryStrengthGlobal", "ResourceDiversityModifier", "FinishLandTRTourism", "FinishSeaTRTourism", "VotesPerGPT", "RequiresRail", "PurchaseCooldown", "CityAirStrikeDefense", "BuildAnywhere", "FreeArtifacts", "VassalLevyEra", "NumRequiredTier3Tenets", "CannotFailSpies", "AdvancedActionGold", "AdvancedActionScience", "AdvancedActionUnrest", "AdvancedActionRebellion", "AdvancedActionGP", "AdvancedActionUnit", "AdvancedActionWonder", "AdvancedActionBuilding", "BlockBuildingDestructionSpies", "BlockWWDestructionSpies", "BlockUDestructionSpies", "BlockGPDestructionSpies", "BlockRebellionSpies", "BlockUnrestSpies", "BlockScienceTheft", "BlockGoldTheft", "IsCorporation", "GPRateModifierPerXFranchises", "TRSpeedBoost", "TRVisionBoost", "DPToVotes", "SecondaryPantheon", "IsDummy", "AnyWater", "BuildingDefenseModifier", "GlobalLandmarksTourismPercent", "GlobalGreatWorksTourismModifier", "NukeInterceptionChance", "ShowInPedia", "FaithToVotes", "CapitalsToVotes", "DoFToVotes", "RAToVotes", "GPExpendInfluence", "AddsFreshWater", "PurchaseOnly", "CityWorkingChange", "GlobalCityWorkingChange", "GreatWorkYieldType", "GlobalConversionModifier", "ConversionModifier", "PlayerBorderGainlessPillage", "CityGainlessPillage")
VALUES		('BUILDING_PEACE_MAKER',				'Peace Maker',				'BUILDING_PEACEMAKER',					'PEACE_MAKER_STRATEGY',			'+5 [ICON_GOLDEN_AGE] Golden Age Points from all Holy Sites.[NEWLINE][NEWLINE] May only be constructed in a Holy City, and only if at least 15% of the global population follows your Religion (scaling with map size). Reduces [ICON_HAPPINESS_3] Religious Division, and allows you to select a Reformation Belief. [NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this city by 25%, and increases the city''s resistance to conversion by 10%.[NEWLINE][NEWLINE]Missionaries gain 1 extra spread.',				'0',						'-1',		'0',	'0',	'0',		'0',		'0',				'0',			'0',	 '0',		 '0',				'0',			 '0',				 '0',				'0',		'0',			'0',		'1',			 '1',					'0',			'0',				'0',				'0',			'0', '125',			'-1',		'0',			 '1',				'0',		'1',			 '15',					'-20',			'-1',			'0',			'0',			'0',				'0',							'0',					'0',								'0',						'0',					'0',				'0',					'0',		'0',				'0',		'0',		'0',			'0',			'0',				'0',			'0',			'0',				'0',					'0',				'0',					'0',						'0',					'0',					'0',						'0',						'0',							'0',							'0',						'0',								'0',					'0',					'0',					'0',								'0',				'0',							'0',					'0',		'0',			'0',			'0',			'0',						'0',	'0',				'0',			'0',					'0',							'0',					'0',					'0',				'0',					'0',			'0',						'1',						'25',				'0',						'0',			'0',			'0',					'0',						'0',					'0',					'0',					'0',						'0',						'0',							'0',								'0',					'0',								'0',					'0',										'0',							'0',	'BUILDINGCLASS_PEACE_MAKER',	'TEMPLE',			'2',					'R,T', 'JFD_PIETY_BELIEF_ATLAS',						'0',				'0',						'0',		'0',		'0',			'0',				'0',					'0',				'0',					'0',				'0',							'0',								'0',							'0',					'0',						'0',					'0',						'0',						'0',						'0',						'0',							'0',							'0',								'0',								'0',							'0',						'0',								'0',							'0',						'15',							'0',							'0',			'1',						'0',				'0',					'0',							'0',						'0',					'0',			'0',			'0',		'0',					'0',						'0',			'0',					'0',					'0',				'0',					'0',								'0',						'0',					'0',				'0',			'0',			'0',				'0',					'0',			'0',			'0',				'0',					'0',				'0',				'0',						'0',					'0',					'0',				'0',					'0',					'0',					'0',								'0',						'0',					'0',						'0',					'0',			'0',					'0',			'0',				'0',						'0',			'0',				'0',		'0',				'0',		'0',		'0',						'0',							'0',								'0',					'0',			'1',			'10',				'0',		'0',		'0',					'0',			'0',			'0',				'0',						'0',		'YIELD_CULTURE',						'0',				'-20',							'0',					'0');

INSERT INTO BuildingClasses ("Type",										"Description",		"DefaultBuilding", "MaxGlobalInstances", "MaxTeamInstances", "MaxPlayerInstances", "ExtraPlayerInstances", "NoLimit", "Monument") 
VALUES						('BUILDINGCLASS_PEACE_MAKER',					'Peace Maker', 'BUILDING_PEACE_MAKER',					'-1',				'-1',				 '1',					'0',		'0',		'0');

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_PEACE_MAKER', 'YIELD_FAITH', 3),
	('BUILDING_PEACE_MAKER', 'YIELD_GOLD', 3),
	('BUILDING_PEACE_MAKER', 'YIELD_CULTURE', 3),
	('BUILDING_PEACE_MAKER', 'YIELD_SCIENCE', 3);

INSERT INTO Building_Flavors ("BuildingType", "FlavorType", "Flavor") 
VALUES						('BUILDING_PEACE_MAKER', 'FLAVOR_RELIGION', '200');

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_PEACE_HEGEMONY', 'BUILDINGCLASS_PEACE_MAKER');

INSERT INTO Building_ImprovementYieldChangesGlobal
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_PEACE_MAKER', 'IMPROVEMENT_HOLY_SITE', 'YIELD_GOLDEN_AGE_POINTS', 5);


--==============================================
--update hero worship
--==============================================
INSERT INTO Belief_YieldFromConquest
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_INTERFAITH_DIALOGUE', 'YIELD_CULTURE', 100);



--INSERT INTO "main"."Beliefs" ("ID", "Type", "Description", "ShortDescription", "Pantheon", "Founder", "Follower", "Enhancer", "Reformation", "RequiresPeace", "ConvertsBarbarians", "FaithPurchaseAllGreatPeople", "MinPopulation", "MinFollowers", "MaxDistance", "CityGrowthModifier", "FaithFromKills", "FaithFromDyingUnits", "RiverHappiness", "HappinessPerCity", "HappinessPerFollowingCity", "HappinessPerXPeacefulForeignFollowers", "PlotCultureCostModifier", "CityRangeStrikeModifier", "CombatModifierEnemyCities", "CombatModifierFriendlyCities", "FriendlyHealChange", "CityStateFriendshipModifier", "LandBarbarianConversionPercent", "WonderProductionModifier", "PlayerHappiness", "PlayerCultureModifier", "GoldPerFollowingCity", "GoldPerXFollowers", "GoldPerFirstCityConversion", "SciencePerOtherReligionFollower", "SpreadDistanceModifier", "SpreadStrengthModifier", "ProphetStrengthModifier", "ProphetCostModifier", "MissionaryStrengthModifier", "MissionaryCostModifier", "FriendlyCityStateSpreadModifier", "GreatPersonExpendedFaith", "CityStateMinimumInfluence", "CityStateInfluenceModifier", "OtherReligionPressureErosion", "SpyPressure", "InquisitorPressureRetention", "FaithBuildingTourism", "ObsoleteEra", "ResourceRevealed", "SpreadModifierDoublingTech", "RequiresImprovement", "Tooltip", "RequiresResource", "RequiresNoImprovement", "RequiresNoImprovementFeature", "PolicyReductionWonderXFollowerCities", "PressureChangeTradeRoute", "CivilizationType", "CombatVersusOtherReligionOwnLands", "CombatVersusOtherReligionTheirLands", "UnitProductionModifier", "MissionaryInfluenceCS", "HappinessPerPantheon", "ExtraVotes", "CityScalerLimiter", "FollowerScalerLimiter", "ReducePolicyRequirements", "CSYieldBonusFromSharedReligion", "HappinessFromForeignSpies", "InquisitorCostModifier") VALUES ('83', 'BELIEF_TEMPLATE', 'o', 'u', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '0', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
--Unlocks Peace Maker Wonder ([COLOR_MAGENTA]+3 [ICON_PEACE] Faith, +3 [ICON_FOOD] Food; +5 [ICON_GOLDEN_AGE] Golden Age Points from Holy Sites; unlocks Reformation Belief[ENDCOLOR]). +50% Yields from Friendly/ Allied City States Following this Religon.[NEWLINE]Missionary are 25% stronger to friendly city state.
/*
INSERT INTO Buildings 
			("Type",								"Description",						"Civilopedia",								"Strategy",									"Help", "GoldMaintenance", "MutuallyExclusiveGroup", "TeamShare", "Water", "River", "FreshWater", "Mountain", "NearbyMountainRequired", "Hill", "Flat", "FoundsReligion", "IsReligious", "BorderObstacle", "PlayerBorderObstacle", "Capital", "GoldenAge", "MapCentering", "NeverCapture", "NukeImmune", "AllowsWaterRoutes", "ExtraLuxuries", "DiplomaticVoting", "AffectSpiesNow", "NullifyInfluenceModifier", "Cost", "FaithCost", "LeagueCost", "UnlockedByBelief", "UnlockedByLeague", "HolyCity", "NumCityCostMod", "HurryCostModifier", "MinAreaSize", "ConquestProb", "CitiesPrereq", "LevelPrereq", "CultureRateModifier", "GlobalCultureRateModifier", "GreatPeopleRateModifier", "GlobalGreatPeopleRateModifier", "GreatGeneralRateModifier", "GreatPersonExpendGold", "GoldenAgeModifier", "UnitUpgradeCostMod", "Experience", "GlobalExperience", "FoodKept", "Airlift", "AirModifier", "NukeModifier", "NukeExplosionRand", "HealRateChange", "Happiness", "UnmoddedHappiness", "UnhappinessModifier", "HappinessPerCity", "HappinessPerXPolicies", "CityCountUnhappinessMod", "NoOccupiedUnhappiness", "WorkerSpeedModifier", "MilitaryProductionModifier", "SpaceProductionModifier", "GlobalSpaceProductionModifier", "BuildingProductionModifier", "WonderProductionModifier", "CityConnectionTradeRouteModifier", "CapturePlunderModifier", "PolicyCostModifier", "PlotCultureCostModifier", "GlobalPlotCultureCostModifier", "PlotBuyCostModifier", "GlobalPlotBuyCostModifier", "GlobalPopulationChange", "TechShare", "FreeTechs", "FreePolicies", "FreeGreatPeople", "MedianTechPercentChange", "Gold", "AllowsRangeStrike", "Espionage", "AllowsFoodTradeRoutes", "AllowsProductionTradeRoutes", "Defense", "ExtraCityHitPoints", "GlobalDefenseMod", "MinorFriendshipChange", "VictoryPoints", "ExtraMissionarySpreads", "ReligiousPressureModifier", "EspionageModifier", "GlobalEspionageModifier", "ExtraSpies", "SpyRankChange", "InstantSpyRankChange", "TradeRouteRecipientBonus", "TradeRouteTargetBonus", "NumTradeRouteBonus", "LandmarksTourismPercent", "InstantMilitaryIncrease", "GreatWorksTourismModifier", "XBuiltTriggersIdeologyChoice", "TradeRouteSeaDistanceModifier", "TradeRouteSeaGoldBonus", "TradeRouteLandDistanceModifier", "TradeRouteLandGoldBonus", "CityStateTradeRouteProductionModifier", "GreatScientistBeakerModifier", "BuildingClass",			"ArtDefineTag", "PortraitIndex",	 "WonderSplashAnchor",		"IconAtlas", "ArtInfoCulturalVariation", "ArtInfoEraVariation", "ArtInfoRandomVariation", "IsNoWater", "IsNoRiver", "CapitalOnly", "NumPoliciesNeeded", "NationalPopRequired", "LocalPopRequired", "BorderObstacleCity", "BorderObstacleWater", "AllowsFoodTradeRoutesGlobal", "AllowsProductionTradeRoutesGlobal", "CityConnectionGoldModifier", "EmpireNeedsModifier", "EmpireNeedsModifierGlobal", "PovertyHappinessChange", "DefenseHappinessChange", "IlliteracyHappinessChange", "UnculturedHappinessChange", "MinorityHappinessChange", "PovertyHappinessChangeGlobal", "DefenseHappinessChangeGlobal", "IlliteracyHappinessChangeGlobal", "UnculturedHappinessChangeGlobal", "MinorityHappinessChangeGlobal", "LocalUnhappinessModifier", "GlobalBuildingGoldMaintenanceMod", "NationalFollowerPopRequired", "GlobalFollowerPopRequired", "ReformationFollowerReduction", "ExtraMissionarySpreadsGlobal", "IsReformation", "PuppetPurchaseOverride", "SingleLeagueVotes", "AllowsPuppetPurchase", "GrantsRandomResourceTerritory", "ResourceQuantityToPlace", "TradeReligionModifier", "WLTKDTurns", "EventTourism", "AlwaysHeal", "CitySupplyModifier", "CitySupplyModifierGlobal", "CitySupplyFlat", "CitySupplyFlatGlobal", "CityRangedStrikeRange", "CityIndirectFire", "RangedStrikeModifier", "ExtraMissionaryStrengthGlobal", "ResourceDiversityModifier", "FinishLandTRTourism", "FinishSeaTRTourism", "VotesPerGPT", "RequiresRail", "PurchaseCooldown", "CityAirStrikeDefense", "BuildAnywhere", "FreeArtifacts", "VassalLevyEra", "NumRequiredTier3Tenets", "CannotFailSpies", "AdvancedActionGold", "AdvancedActionScience", "AdvancedActionUnrest", "AdvancedActionRebellion", "AdvancedActionGP", "AdvancedActionUnit", "AdvancedActionWonder", "AdvancedActionBuilding", "BlockBuildingDestructionSpies", "BlockWWDestructionSpies", "BlockUDestructionSpies", "BlockGPDestructionSpies", "BlockRebellionSpies", "BlockUnrestSpies", "BlockScienceTheft", "BlockGoldTheft", "IsCorporation", "GPRateModifierPerXFranchises", "TRSpeedBoost", "TRVisionBoost", "DPToVotes", "SecondaryPantheon", "IsDummy", "AnyWater", "BuildingDefenseModifier", "GlobalLandmarksTourismPercent", "GlobalGreatWorksTourismModifier", "NukeInterceptionChance", "ShowInPedia", "FaithToVotes", "CapitalsToVotes", "DoFToVotes", "RAToVotes", "GPExpendInfluence", "AddsFreshWater", "PurchaseOnly", "CityWorkingChange", "GlobalCityWorkingChange", "GreatWorkYieldType", "GlobalConversionModifier", "ConversionModifier", "PlayerBorderGainlessPillage", "CityGainlessPillage")
VALUES		('BUILDING_PEACE_MAKER',				'Peace Maker', 'TXT_KEY_BUILDING_GREAT_ALTAR_TEXT', 'TXT_KEY_BUILDING_GREAT_ALTAR_STRATEGY', 'TXT_KEY_BUILDING_GREAT_ALTAR_HELP',  '0',						'-1',				'0',		'0',	'0',		'0',		'0',				'0',			'0',	 '0',		 '0',				'0',			 '0',				 '0',				'0',		'0',			'0',		'1',			 '1',					'0',			'0',				'0',				'0',						'0', '125',			'-1',			'0',			 '1',				'0',		'1',			 '15',					'-20',			'-1',			'0',			'0',			'0',				'0',							'0',					'0',								'0',						'0',					'0',				'0',					'0',		'0',				'0',		'0',		'0',			'0',			'0',				'0',			'0',			'0',				'0',					'0',				'0',					'0',						'0',					'0',					'0',						'0',						'0',							'0',							'0',						'0',								'0',					'0',					'0',					'0',								'0',				'0',							'0',					'0',		'0',			'0',			'0',			'0',						'0',	'0',				'0',			'0',					'0',							'0',	'0',					'0',				'0',					'0',			'0',						'0',						'25',				'0',						'0',			'0',			'0',					'0',						'0',					'0',					'0',					'0',						'0',						'0',							'0',								'0',					'0',								'0',					'0',										'0',							'0',	'BUILDINGCLASS_PEACE_MAKER',	'TEMPLE',				'34',					'R,T', 'COMMUNITY_ATLAS',						'0',				'0',						'0',		'0',		'0',			'0',				'0',					'0',				'0',					'0',				'0',							'0',								'0',							'0',					'0',						'0',					'0',						'0',						'0',						'0',						'0',							'0',							'0',								'0',								'0',							'0',						'0',								'0',							'0',						'15',							'0',							'0',			'1',						'0',				'0',					'0',							'0',						'0',					'0',			'0',			'0',		'0',					'0',						'0',			'0',					'0',					'0',				'0',					'0',								'0',						'0',					'0',				'0',			'0',			'0',				'0',					'0',			'0',			'0',				'0',					'0',				'0',				'0',						'0',					'0',					'0',				'0',					'0',					'0',					'0',								'0',						'0',					'0',						'0',					'0',			'0',					'0',			'0',				'0',						'0',			'0',				'0',		'0',				'0',		'0',		'0',						'0',							'0',								'0',					'0',			'1',			'10',				'0',		'0',		'0',					'0',			'0',			'0',				'0',						'0',		'YIELD_CULTURE',						'0',				'-20',							'0',					'0');

INSERT INTO "main"."Beliefs" ("ID", "Type", "Description", "ShortDescription", "Pantheon", "Founder", "Follower", "Enhancer", "Reformation", "RequiresPeace", "ConvertsBarbarians", "FaithPurchaseAllGreatPeople", "MinPopulation", "MinFollowers", "MaxDistance", "CityGrowthModifier", "FaithFromKills", "FaithFromDyingUnits", "RiverHappiness", "HappinessPerCity", "HappinessPerFollowingCity", "HappinessPerXPeacefulForeignFollowers", "PlotCultureCostModifier", "CityRangeStrikeModifier", "CombatModifierEnemyCities", "CombatModifierFriendlyCities", "FriendlyHealChange", "CityStateFriendshipModifier", "LandBarbarianConversionPercent", "WonderProductionModifier", "PlayerHappiness", "PlayerCultureModifier", "GoldPerFollowingCity", "GoldPerXFollowers", "GoldPerFirstCityConversion", "SciencePerOtherReligionFollower", "SpreadDistanceModifier", "SpreadStrengthModifier", "ProphetStrengthModifier", "ProphetCostModifier", "MissionaryStrengthModifier", "MissionaryCostModifier", "FriendlyCityStateSpreadModifier", "GreatPersonExpendedFaith", "CityStateMinimumInfluence", "CityStateInfluenceModifier", "OtherReligionPressureErosion", "SpyPressure", "InquisitorPressureRetention", "FaithBuildingTourism", "ObsoleteEra", "ResourceRevealed", "SpreadModifierDoublingTech", "RequiresImprovement", "Tooltip", "RequiresResource", "RequiresNoImprovement", "RequiresNoImprovementFeature", "PolicyReductionWonderXFollowerCities", "PressureChangeTradeRoute", "CivilizationType", "CombatVersusOtherReligionOwnLands", "CombatVersusOtherReligionTheirLands", "UnitProductionModifier", "MissionaryInfluenceCS", "HappinessPerPantheon", "ExtraVotes", "CityScalerLimiter", "FollowerScalerLimiter", "ReducePolicyRequirements", "CSYieldBonusFromSharedReligion", "HappinessFromForeignSpies", "InquisitorCostModifier") 
VALUES						('28', 'BELIEF_INTERFAITH_DIALOGUE', 'TXT_KEY_BELIEF_INTERFAITH_DIALOGUE', 'TXT_KEY_BELIEF_INTERFAITH_DIALOGUE_SHORT', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '0', 'TXT_KEY_BELIEF_INTERFAITH_DIALOGUE', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
*/
