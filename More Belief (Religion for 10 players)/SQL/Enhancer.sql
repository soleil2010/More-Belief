--===========================================================================================================
-- Joy of people
--===========================================================================================================
/*
INSERT INTO Beliefs
			(Type,					Description,									ShortDescription,	Enhancer,		RiverHappiness,				Tooltip)
	VALUES	('BELIEF_JOY_PEOPLE',  'Let''s joy!',	'Joy of People',					1,					1,		'May build Circus, Zoos and Stadiums with [ICON_PEACE] Faith. These buildings produce +2 [ICON_GOLDEN_AGE] Golden Age Points each. Holy City owner gains +1 [ICON_HAPPINESS_1] Cities built on river following this religion.')
*/
INSERT INTO Beliefs ("Type",											"Description",																																																		"ShortDescription", "Pantheon", "Founder", "Follower", "Enhancer", "Reformation", "RequiresPeace", "ConvertsBarbarians", "FaithPurchaseAllGreatPeople", "MinPopulation", "MinFollowers", "MaxDistance", "CityGrowthModifier", "FaithFromKills", "FaithFromDyingUnits", "RiverHappiness", "HappinessPerCity", "HappinessPerFollowingCity", "HappinessPerXPeacefulForeignFollowers", "PlotCultureCostModifier", "CityRangeStrikeModifier", "CombatModifierEnemyCities", "CombatModifierFriendlyCities", "FriendlyHealChange", "CityStateFriendshipModifier", "LandBarbarianConversionPercent", "WonderProductionModifier", "PlayerHappiness", "PlayerCultureModifier", "GoldPerFollowingCity", "GoldPerXFollowers", "GoldPerFirstCityConversion", "SciencePerOtherReligionFollower", "SpreadDistanceModifier", "SpreadStrengthModifier", "ProphetStrengthModifier", "ProphetCostModifier", "MissionaryStrengthModifier", "MissionaryCostModifier", "FriendlyCityStateSpreadModifier", "GreatPersonExpendedFaith", "CityStateMinimumInfluence", "CityStateInfluenceModifier", "OtherReligionPressureErosion", "SpyPressure", "InquisitorPressureRetention", "FaithBuildingTourism","RequiresImprovement",																																												"Tooltip", "RequiresResource", "RequiresNoImprovement", "RequiresNoImprovementFeature", "PolicyReductionWonderXFollowerCities", "PressureChangeTradeRoute",  "CombatVersusOtherReligionOwnLands", "CombatVersusOtherReligionTheirLands", "UnitProductionModifier", "MissionaryInfluenceCS", "HappinessPerPantheon", "ExtraVotes", "CityScalerLimiter", "FollowerScalerLimiter", "ReducePolicyRequirements", "CSYieldBonusFromSharedReligion", "HappinessFromForeignSpies", "InquisitorCostModifier")
VALUES				('BELIEF_JOY_PEOPLE',								'May build Circus, Zoos and Stadiums with [ICON_PEACE] Faith. These buildings produce +2 [ICON_GOLDEN_AGE] Golden Age points. Cities on rivers gain +1 [ICON_HAPPINESS_1] Happiness',								'Joy of People',		'0',		'0',		'0',		'1',			'0',			'0',					'0',						'0',				'0',			'0',			'0',				'0',			'0',					'0',				'1',				'0',					'0.0',										'0',						'0',						'0',						'0',							'0',					'0',						'0',								'0',						'0',			'0',						'0',					'0',				'0',						'0',								'0',						'0',					'0',						'0',					'0',						'0',						'0',								'0',					'0',							'0',						'0',							'0',			'0',							'0',					'0',				'0',	'May build Circus, Zoos and Stadiums with [ICON_PEACE] Faith. These buildings produce +2 [ICON_GOLDEN_AGE] Golden Age points. Cities on rivers gain +1 [ICON_HAPPINESS_1] Happiness',				'0',						'0',						'0',									'0',						'0',									'0',									'0',					'0',						'0',				'0',			'0',				'0',					'0',							'0',							'0',						'0',						'0');

UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '200'
WHERE BuildingClass = 'BUILDINGCLASS_CIRCUS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = '1', FaithCost = '350'
WHERE BuildingClass = 'BUILDINGCLASS_THEATRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='CBPMC_MORERELIGION' AND Value= 1 );

INSERT INTO Belief_BuildingClassYieldChanges
	(BeliefType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_CIRCUS', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_THEATRE', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_STADIUM', 'YIELD_GOLDEN_AGE_POINTS', 2);

INSERT INTO Belief_BuildingClassFaithPurchase
	(BeliefType, BuildingClassType)
VALUES
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_CIRCUS'),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_THEATRE'),
	('BELIEF_JOY_PEOPLE', 'BUILDINGCLASS_STADIUM');
