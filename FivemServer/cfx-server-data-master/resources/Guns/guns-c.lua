RegisterCommand("clearWeapons", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~Cleared all weapons!")

end)

Citizen.CreateThread(function()

    local h_key = 74
    local x_key = 73
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then
            giveWeapon("weapon_Pistol")
            giveWeapon("weapon_Pumpshotgun")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER")
            giveWeapon("weapon_Poolcue")
            alert("~b~Gave Weapons with ~INPUT_VEH_HEADLIGHT~")
        end

    end    

end)