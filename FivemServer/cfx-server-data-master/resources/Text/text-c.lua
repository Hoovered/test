local colour = {
    r=247,
    g=88,
    b=223,
    a=255

}


Citizen.CreateThread(function()

    while 1>0 do
        Citizen.Wait(3)
        
        -- the Text
        SetTextFont(0) -- 0 -> 4
        SetTextScale(0.4, 0.4)
        SetTextColour(colour.r, colour.g, colour.b, colour.a)
        
        SetTextEntry("STRING")
        AddTextComponentString("Testing KEKW!")
        DrawText(0.2, 0.000002)

        -- the Rectangle
        DrawRect(150, 100, 3.2, 0.05, 66, 134, 244, 245)

    end

end)