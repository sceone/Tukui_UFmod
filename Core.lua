--------------------------------------------------
-- Original codes : Modules/UnitFrames/Core.lua
--------------------------------------------------
local T, C, L = unpack(Tukui)
local TukuiUnitFrames = T.UnitFrames

function TukuiUnitFrames:UpdateThreat(event, unit)
	if (not C.UnitFrames.Threat) or (unit ~= self.unit) then
		return
	end

	local Panel = self.Panel
	
	if Panel then
		local Status = UnitThreatSituation(unit)
		
		if Status and Status > 0 then
			Panel:SetBackdropBorderColor(1, 0, 0)
		else
			Panel:SetBackdropBorderColor(C["General"].BorderColor[1] * 0.7, C["General"].BorderColor[2] * 0.7, C["General"].BorderColor[3] * 0.7)
		end
	end
end
