--=============================================================================================
-- Name:		RiseMoon
-- Description:	add Dummies when player has number cities below 9
--=============================================================================================
function RiseMoon(PlayerID)
	local player = Players[PlayerID];	
	local beliefID = GameInfoTypes["BELIEF_RISE_MOON"];

	if (player:HasBelief(beliefID) and player:IsEverAlive()) then
		local capital = player:GetCapitalCity();
		local Arcanum = GameInfoTypes["BUILDING_DF_MOONSHINE_ARCANUM"];
		local ArcanumBonus = GameInfoTypes["BUILDING_DF_MOONSHINE_ARCANUM_BONUS"];
		local ArcanumReformation = GameInfoTypes["BUILDING_DF_MOONSHINE_ARCANUM_REFORMATION"];
		local totCitiesWithMyReligion = Game.GetNumCitiesFollowing(player:GetReligionCreatedByPlayer());
		
		-- if player doesn't lost him religion
		if(totCitiesWithMyReligion > 0) then
			capital:SetNumRealBuilding(ArcanumBonus, 1);

			if(totCitiesWithMyReligion < 6) then
				-- add 4 BUILDING_DF_MOONSHINE_ARCANUM (tot: 20% each bonus)
				capital:SetNumRealBuilding(Arcanum, 4);
				print("RiseMoon has built: 4 dummies");
			elseif(totCitiesWithMyReligion < 10) then
				-- add 2 BUILDING_DF_MOONSHINE_ARCANUM (tot: 10% each bonus)
				capital:SetNumRealBuilding(Arcanum, 2);
				print("RiseMoon has built: 2 dummies");
			else
				-- remove all dummies
				capital:SetNumRealBuilding(Arcanum, 0);
				print("RiseMoon has built: 0 dummies");
			end

			local iTeutonicOrder = player:CountNumBuildings(GameInfoTypes["BUILDING_TCM_GERMANY_TEUTONIC_ORDER"]);
			local iTCMTeutonicOrder = player:CountNumBuildings(GameInfoTypes["BUILDING_GERMANY_TEUTONIC_ORDER"]);
			local iKREMLIN = player:CountNumBuildings(GameInfoTypes["BUILDING_KREMLIN"]);
			
			-- remove or add followers reformation 
			if(	iTeutonicOrder > 0 or iTCMTeutonicOrder > 0 or iKREMLIN > 0 ) then
				capital:SetNumRealBuilding(ArcanumReformation, 0);
			else
				capital:SetNumRealBuilding(ArcanumReformation, 1);
			end
			
		else
			capital:SetNumRealBuilding(ArcanumBonus, 0);
				-- remove all dummies
			capital:SetNumRealBuilding(Arcanum, 0);
			--print(player:GetName()." lost RiseMoon");
		end
		--print("yeah!");
	end
end

GameEvents.PlayerDoTurn.Add(RiseMoon)

