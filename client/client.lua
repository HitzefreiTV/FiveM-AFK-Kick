Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if Config.WarnPlayerBefore and time == math.ceil(Config.AFK_Time / 4) then
						SendMessage('Du wirst in ' .. time .. ' Sekunden gekickt, wenn du nicht mehr aktiv sein solltest.')
					end

					time = time - 1
				else
					TriggerServerEvent("htv_afkkick:KickPlayer")
				end
			else
				time = Config.AFK_Time
			end

			prevPos = currentPos
		end
	end
end)

function SendMessage(text)
	if Config.MessageStyle == 'mythic-notify' then
		exports['mythic_notify']:DoHudText('inform', text)
	elseif Config.MessageStyle == 'esx:showNotification' then
		ESX.ShowNotification(text)
	elseif Config.MessageStyle == 'console' then
		print(text)
	end
end
