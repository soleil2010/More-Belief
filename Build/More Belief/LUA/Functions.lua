--compter le nombre de ville convertie

--Ajouter police dummy pour crusader
function CrusaderRework(PlayerID,ReligionID,Belief1ID)
local player = Players[PlayerID]
local Belief1ID = GameInfo.Beliefs.BELIEF_EVANGELISM.ID
local PolicyID = GameInfoTypes.POLICY_MB_HOLY_CRUSADER

	if player:hasBelief(Belief1ID) then
	local ReligionID = Player:GetReligionCreatedByPlayer()
	player:SetHasPolicy(PolicyID, true)
	end
end

--Player:HasReligionInMostCities(ReligionType religion)
GameEvents.ReligionReformed.Add(CrusaderRework)
--[[
function CrusaderAppli(PlayerID, ReligionID, CityX, CityY)
local player = Players[PlayerID]
local Belief1ID = GameInfo.Beliefs.BELIEF_EVANGELISM.ID

	if player:hasBelief(Belief1ID) then
		local ReligionID = Player:GetReligionCreatedByPlayer()
		local x = pCity:plot():GetX();
		local y = pCity:plot():GetY();
		if Player:HasReligionInMostCities(ReligionID) then
		player:SetHasPolicy(PolicyID, true)
	end
end
GameEvents.CityConvertsReligion.Add(CrusaderAppli)
]]