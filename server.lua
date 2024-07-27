RegisterCommand("::{FaudEs}::changerPlace", function(source, args, rawCommand)
    local plyPed = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(plyPed) then
        local plyVehicle = GetVehiclePedIsIn(plyPed, false)
        local seat = GetPedInVehicleSeat(plyVehicle, -1)

        if seat ~= -1 then
            TriggerClientEvent("::{FaudEs}::mooveonthecar", source, seat)
        end
    end
end, false)
