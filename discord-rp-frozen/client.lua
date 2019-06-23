local appid = '592427649968898050'
local asset = 'logo'

function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())

    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)
    SetDiscordRichPresenceAssetText('Frozen Network')
    SetRichPresence('(' .. GetNumberOfPlayers() .. ' / 32)')
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(10)
    SetRP()
  end
end)
