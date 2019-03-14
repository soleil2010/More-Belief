function WarCult(PlayerID, BeliefID)

local player = Players[PlayerID]
local beliefID = BeliefTypes.BELIEF_WAR_CULT
local BuildingID = GameInfoTypes.BUILDING_D_WARCULT

	if player:HasBelief(beliefID) and player:IsEverAlive() then
		 city = player:GetCityByID(CityID)
			if city:isCapital() then
			city:SetNumRealBuilding(BuildingID, 1)
			end
	end
end


