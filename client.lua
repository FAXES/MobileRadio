-----------------------------------
--- Mobile Radio, Made by FAXES ---
-----------------------------------

---Config ---
radioCommand = "radio" -- Command to toggle mobile radio

--- Code ---

RegisterCommand(radioCommand, function(source, args, rawCommand)
	TriggerEvent("Fax:ToggleMobileRadio")
end)

RegisterNetEvent("Fax:ToggleMobileRadio")
AddEventHandler("Fax:ToggleMobileRadio", function()
	if IsMobilePhoneRadioActive() then
		SetMobilePhoneRadioState(0)
		SetAudioFlag("MobileRadioInGame", 0)
		SetAudioFlag("AllowRadioDuringSwitch", 0)
	else
		SetMobilePhoneRadioState(1)
		SetAudioFlag("MobileRadioInGame", 1)
		SetAudioFlag("AllowRadioDuringSwitch", 1)
	end
end)