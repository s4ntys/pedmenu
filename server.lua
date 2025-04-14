if Config.Framework == 'esx' then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'qbcore' then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterCommand('ped', function(source, args, rawCommand)
    local license
    if Config.Framework == 'esx' then
        local xPlayer = ESX.GetPlayerFromId(source)
        license = xPlayer.identifier
    elseif Config.Framework == 'qbcore' then
        local Player = QBCore.Functions.GetPlayer(source)
        license = Player.PlayerData.license
    end
    
    if Config.AllowedPeds[license] then
        TriggerClientEvent('pedmenu:setPed', source, Config.AllowedPeds[license])
    else
        if Config.Framework == 'esx' then
            TriggerClientEvent('esx:showNotification', source, 'Nemáš prístup do PedMenu!')
        elseif Config.Framework == 'qbcore' then
            TriggerClientEvent('QBCore:Notify', source, 'Nemáš prístup do PedMenu!', 'error')
        end
    end
end, false)