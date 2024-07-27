Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local plyPed = PlayerPedId()

        if IsPedSittingInAnyVehicle(plyPed) then
            local plyVehicle = GetVehiclePedIsIn(plyPed, false)
            local CarSpeed = GetEntitySpeed(plyVehicle) * 3.6

            if CarSpeed <= 40.0 then
                if IsControlJustReleased(0, 157) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, -1)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 158) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 0)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 160) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 1)
                    Citizen.Wait(10)
                end
                if IsControlJustReleased(0, 164) then 
                    SetPedIntoVehicle(plyPed, plyVehicle, 2)
                    Citizen.Wait(10)
                end
            end
        end
    end
end)

RegisterNetEvent("::{FaudEs}::mooveonthecar")
AddEventHandler("::{FaudEs}::mooveonthecar", function(seat)
    local plyPed = PlayerPedId()
    local plyVehicle = GetVehiclePedIsIn(plyPed, false)

    if DoesEntityExist(plyVehicle) and seat >= -1 and seat <= GetVehicleMaxNumberOfPassengers(plyVehicle) then
        TaskWarpPedIntoVehicle(plyPed, plyVehicle, seat)
    end
end)
