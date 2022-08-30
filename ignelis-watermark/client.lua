---@diagnostic disable: undefined-global, lowercase-global
CreateThread(function()
    while true do
        local pid = PlayerId()
        SendNUIMessage({
            type = "update",
            online = #GetActivePlayers(),
            id = GetPlayerServerId(pid)
        })
        Wait(2000)
    end
end)