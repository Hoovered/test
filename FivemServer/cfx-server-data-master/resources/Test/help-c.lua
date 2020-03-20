RegisterCommand("help", function()
    msg("Test 1")
    msg("Test 2")
    msg("Test 3")

end, false)

RegisterCommand("die", function()

    SetEntityHealth(PlayerPedId(), 0)
    notify("~r~You died.")

end)


function msg(text)
    TriggerEvent("chatMessage", "[Server]", {255,0,0}, text)


end