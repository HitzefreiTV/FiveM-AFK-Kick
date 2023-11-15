RegisterServerEvent("htv_afkkick:KickPlayer")
AddEventHandler("htv_afkkick:KickPlayer", function()
	DropPlayer(source, Config.KickMessage)
end)