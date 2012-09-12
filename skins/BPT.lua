if not (IsAddOnLoaded("ElvUI") or IsAddOnLoaded("Tukui")) or not IsAddOnLoaded("BalancePowerTracker") then return end
local name = "BPTSkin"
local function SkinBPT(self)
	if (select(2, UnitClass("player")) ~= "DRUID") then
		return
	end
	BalancePowerTracker_Options.global.enabled = BalancePowerTracker_LunarEclipseIcon
	BalancePowerTracker.CheckAll()
	BalancePowerTracker_Eclipse_Bar_Frame:SetTemplate("Transparent")
	BalancePowerTracker_SolarEclipseIcon:SetTemplate(Transparent)
	BalancePowerTracker_LunarEclipseIcon:SetTemplate(Transparent)
	
	hooksecurefunc(BalancePowerTracker.modules.eclipse_bar,"ReDraw", function() BalancePowerTracker_Eclipse_Bar_Frame:SetTemplate("Transparent") end)
end

cRegisterSkin(name,SkinBPT)