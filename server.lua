ESX = exports['es_extended']:getSharedObject()

RegisterCommand('ped', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local license = xPlayer.identifier
    
    if Config.AllowedPeds[license] then
        TriggerClientEvent('esx_pedmenu:setPed', source, Config.AllowedPeds[license])
    else
        TriggerClientEvent('esx:showNotification', source, 'Nemáš prístup do PedMenu!')
    end
end, false)