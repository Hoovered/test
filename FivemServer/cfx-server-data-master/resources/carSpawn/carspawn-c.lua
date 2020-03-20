local cars = {"adder", "comet", "cheetah", "faggio"}

RegisterCommand("car", function()

    local car = (cars[math.random(#cars)])

    spawnCar(car)
    notify("~p~Spawned Car: ~h~~g~" .. car)

end)