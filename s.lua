RegisterNetEvent('vinor:PlayerHaveWhitelistedCar', function(nameVehicle)
    local steamhex = 'brak'

    for k, v in pairs(GetPlayerIdentifiers(source)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamhex = v
            break
        end
    end

    for nic, dane in pairs(cfg.VehicleWhitelistHex) do
        if not steamhex ~= dane[2] and not nameVehicle ~= dane[1] then
            print('[' .. GetPlayerName(source) .. '] Chciał kierować limitką o nazwie: ' .. nameVehicle .. ' Gracza [' .. dane[2] .. ']')
            DropPlayer(source, 'Czemu prowadzisz moją limitke?')
        end
    end

end)