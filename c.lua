Citizen.CreateThread(function()
    local playerPedId = PlayerPedId()
    while true do
        local pedVehicle = GetVehiclePedIsIn(playerPedId, false)

        if pedVehicle and pedVehicle ~= 0 then
            if GetPedInVehicleSeat(pedVehicle, -1) == playerPedId then
                TriggerServerEvent('vinor:PlayerHaveWhitelistedCar', GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(pedVehicle))))
            end 
        end

        Citizen.Wait(2000)
    end
end)