function WarCult(PlayerID, BeliefID)

	local player = Players[PlayerID]
	local beliefID = BeliefTypes.BELIEF_WAR_CULT
	local BuildingID = GameInfoTypes.BUILDING_D_WARCULT

	if player:HasBelief(beliefID) and player:IsEverAlive() then
		for city in player:Cities()
		if city:IsCapital() then
			city:SetNumRealBuilding(BuildingID, 1)
		end
	end
end



--=============================================================================================
-- Name:		RiseMoon
-- Description:	add Dummies when player has number cities below 9
--=============================================================================================
function RiseMoon()
	local player = Players[PlayerID];	
	if (player:HasBelief(beliefID) and player:IsEverAlive()) then
		local beliefID = BeliefTypes.BELIEF_MOON_RISE;
		local dummy = GameInfoTypes.BUILDING_DF_MOONSHINE_ARCANUM;
		local capital = player:GetCapitalCity();
		local totCitiesWithMyReligion= Game.GetNumCitiesFollowing(player:GetReligionCreatedByPlayer());

		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
		print(Game.GetReligionName(player:GetReligionCreatedByPlayer()))		
	end
end

GameEvents.PlayerDoTurn.Add(RiseMoon)


