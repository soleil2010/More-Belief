--=============================================================================================
-- Name:		Gemoust
-- Description:	add Dummy each city with our religion (without capital)
--=============================================================================================
function WordOfMouth(PlayerID)
	local player = Players[PlayerID];	
	local beliefID = GameInfoTypes["BELIEF_WORD_OF_MOUTH"];

	if (player:HasBelief(beliefID) and player:IsEverAlive()) then
		local Gemoust = GameInfoTypes["BUILDING_DF_Gemoust"];
		local totCitiesWithMyReligion = Game.GetNumCitiesFollowing(player:GetReligionCreatedByPlayer());
		
		-- if player doesn't lost him religion
		if(totCitiesWithMyReligion > 1) then
			local nbDummies=totCitiesWithMyReligion-1;
			-- add dummy each city with our religion
			capital:SetNumRealBuilding(Gemoust,nbDummies);
		else
			-- remove all dummies
			capital:SetNumRealBuilding(Gemoust, 0);
		end
	end
end

GameEvents.PlayerDoTurn.Add(WordOfMouth)

