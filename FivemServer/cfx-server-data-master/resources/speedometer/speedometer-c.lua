function text(content)
    SetTextFont(1)
    SetTextColour(203, 0, 223, 255)
    SetTextOutline(2)
    SetTextProportional(0)
    SetTextScale(1.9, 1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. " MPH")
    DrawText(0.8,0.7)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2)

        --[[
            Kph's factor = 3.6
            Mph's factor = 2.2369    
        ]]

        local speed = GetEntitySpeed(GetPlayerPed(-1, false))*2.2369
        -- Check if the ped is in a vehicle
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then 
            text(math.floor(speed))
        end
    end

end)