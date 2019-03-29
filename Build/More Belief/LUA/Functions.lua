--=============================================================================================
-- Name:		RiseMoon
-- Description:	add Dummies when player has number cities below 9
--=============================================================================================
function RiseMoon(PlayerID)
	local player = Players[PlayerID];	
	local beliefID = GameInfoTypes["BELIEF_RISE_MOON"];
	if (player:HasBelief(beliefID) and player:IsEverAlive()) then
		local dummy = GameInfoTypes.BUILDING_DF_MOONSHINE_ARCANUM;
		local capital = player:GetCapitalCity();
		local totCitiesWithMyReligion = Game.GetNumCitiesFollowing(player:GetReligionCreatedByPlayer());

		if(totCitiesWithMyReligion < 6) then
			capital:SetNumRealBuilding(dummy, 4);
			print("4 dummies");
		elseif(totCitiesWithMyReligion < 10) then
			capital:SetNumRealBuilding(dummy, 2);
			print("2 dummies");
		else
			capital:SetNumRealBuilding(dummy, 0);
			print("0 dummies");
		end

		print("yeah!");
	end
end

GameEvents.PlayerDoTurn.Add(RiseMoon)

