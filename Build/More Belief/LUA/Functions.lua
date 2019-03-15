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

--compter le nombre de ville convertie



