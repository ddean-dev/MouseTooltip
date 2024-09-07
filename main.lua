local MouseTooltip = CreateFrame("Frame")

function MouseTooltip:OnEvent(event, addon)
	if event == "ADDON_LOADED" and addon == "MouseTooltip" then
		hooksecurefunc("GameTooltip_SetDefaultAnchor", function(s, p)
			s:SetOwner(p, "ANCHOR_CURSOR")
		end)
	end
end

MouseTooltip:RegisterEvent("ADDON_LOADED")
MouseTooltip:SetScript("OnEvent", MouseTooltip.OnEvent)
